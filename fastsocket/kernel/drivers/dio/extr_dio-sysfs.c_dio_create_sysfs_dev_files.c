
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dio_dev {struct device dev; } ;


 int dev_attr_id ;
 int dev_attr_ipl ;
 int dev_attr_name ;
 int dev_attr_resource ;
 int dev_attr_secid ;
 int device_create_file (struct device*,int *) ;

int dio_create_sysfs_dev_files(struct dio_dev *d)
{
 struct device *dev = &d->dev;
 int error;


 if ((error = device_create_file(dev, &dev_attr_id)) ||
     (error = device_create_file(dev, &dev_attr_ipl)) ||
     (error = device_create_file(dev, &dev_attr_secid)) ||
     (error = device_create_file(dev, &dev_attr_name)) ||
     (error = device_create_file(dev, &dev_attr_resource)))
  return error;

 return 0;
}
