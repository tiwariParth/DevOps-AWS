provider "aws" {
  region = "ap-south-1"  
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-03b8adbf322415fd0"
  instance_type = "t2.micro"
  key_name      = "devopsaws"
  
  tags = {
    Name = "DevOps-EC2"
  }
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.devops_ec2.public_ip
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.devops_ec2.id
}