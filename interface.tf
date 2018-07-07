variable "name" {
  description = "The VPC name"
}

variable "cidr" {
  description = "The VPC's cidr"
}

variable "public_subnet" {
  description = "The Public subnet of the VPC"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you need private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true if you want to use Private DNS within the VPC"
  default     = true
}

output "public_subnet_id" {
  value     = "${aws_subnet.public.id}"
  sensitive = true
}

output "vpc_id" {
  value = "${aws_vpc.tfb.id}"
}

output "cidr" {
  value = "${aws_vpc.tfb.cidr_block}"
}
