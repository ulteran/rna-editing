print('Hello, R users!')

# Check that a file name was provided as a command line argument
if (length(commandArgs(trailingOnly = TRUE)) < 1) {
  stop("Please provide a file name as a command line argument.")
}

# Read the file and output the first 20 lines
file_name <- commandArgs(trailingOnly = TRUE)[1]
file_contents <- readLines(file_name, n = 20)
cat(file_contents, sep = "\n")
