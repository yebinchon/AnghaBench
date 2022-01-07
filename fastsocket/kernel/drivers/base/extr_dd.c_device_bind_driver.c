
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int driver_bound (struct device*) ;
 int driver_sysfs_add (struct device*) ;

int device_bind_driver(struct device *dev)
{
 int ret;

 ret = driver_sysfs_add(dev);
 if (!ret)
  driver_bound(dev);
 return ret;
}
