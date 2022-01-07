
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct class {int dummy; } ;
typedef int dev_t ;


 int __match_devt ;
 struct device* class_find_device (struct class*,int *,int *,int ) ;
 int device_unregister (struct device*) ;
 int put_device (struct device*) ;

void device_destroy(struct class *class, dev_t devt)
{
 struct device *dev;

 dev = class_find_device(class, ((void*)0), &devt, __match_devt);
 if (dev) {
  put_device(dev);
  device_unregister(dev);
 }
}
