
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int attr; } ;
struct device {int kobj; } ;


 int sysfs_create_file (int *,int *) ;

int device_create_file(struct device *dev, struct device_attribute *attr)
{
 int error = 0;
 if (dev)
  error = sysfs_create_file(&dev->kobj, &attr->attr);
 return error;
}
