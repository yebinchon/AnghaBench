
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int sem; } ;


 int __device_release_driver (struct device*) ;
 int down (int *) ;
 int up (int *) ;

void device_release_driver(struct device *dev)
{





 down(&dev->sem);
 __device_release_driver(dev);
 up(&dev->sem);
}
