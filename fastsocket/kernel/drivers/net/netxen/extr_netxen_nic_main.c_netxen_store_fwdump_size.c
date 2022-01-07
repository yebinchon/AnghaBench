
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;

__attribute__((used)) static ssize_t
netxen_store_fwdump_size(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t len)
{
 return -EIO;
}
