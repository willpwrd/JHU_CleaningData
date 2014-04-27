#Read in features
feature_data = read.table("features.txt", sep= " ", col.names = c("id", "name"))

#Find feature indices
mean_ind <- grep('mean', feature_data$name)
std_ind <- grep('std', feature_data$name)

#List of wanted features
means <- feature_data[mean_ind,]
stds <- feature_data[std_ind,]

#Merge the data
merged_data <- rbind(means,stds)