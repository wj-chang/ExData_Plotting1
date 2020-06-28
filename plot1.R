powerdata <- read.table("./household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep =";")
data <- powerdata[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]


class(data$Global_active_power)
data$Global_active_power <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
