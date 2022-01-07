
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_atrim ;
 int dev_attr_dtrim ;
 int dev_attr_usr ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static int
isl1208_sysfs_unregister(struct device *dev)
{
 device_remove_file(dev, &dev_attr_dtrim);
 device_remove_file(dev, &dev_attr_atrim);
 device_remove_file(dev, &dev_attr_usr);

 return 0;
}
