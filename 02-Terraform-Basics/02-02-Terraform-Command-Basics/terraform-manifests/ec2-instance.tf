# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-south-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0d0ad8bb301edb745" # Amazon Linux in ap-south-1, update as per your region
  instance_type = "t2.micro"
}
