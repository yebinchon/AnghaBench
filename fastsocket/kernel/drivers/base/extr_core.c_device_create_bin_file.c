
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
struct bin_attribute {int dummy; } ;


 int EINVAL ;
 int sysfs_create_bin_file (int *,struct bin_attribute*) ;

int device_create_bin_file(struct device *dev, struct bin_attribute *attr)
{
 int error = -EINVAL;
 if (dev)
  error = sysfs_create_bin_file(&dev->kobj, attr);
 return error;
}
