terraform {
 required_providers {
 aws = {
 source = "hashicorp/aws"
 version = "~> 3.73.0"
 }
}
 required_version = ">=0.14.9"
}
provider "aws" {
 region = "us-east-1"
 profile = "default"
}

resource "aws_instance" "app_server" {
 instance_type = "t2.micro"
 ami = "ami-0a8b4cd432b1c3063"
tags = {
 Name = "MyVPC"
 }
}

resource "aws_s3_bucket" "demos3" {
    bucket = "bucket-from-terraform-cloud-and-vcs" 
    acl = "private"   
}


