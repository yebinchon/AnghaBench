
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* parent; scalar_t__ driver; } ;
struct TYPE_2__ {int sem; } ;


 int bus_rescan_devices_helper (struct device*,int *) ;
 int device_release_driver (struct device*) ;
 int down (int *) ;
 int up (int *) ;

int device_reprobe(struct device *dev)
{
 if (dev->driver) {
  if (dev->parent)
   down(&dev->parent->sem);
  device_release_driver(dev);
  if (dev->parent)
   up(&dev->parent->sem);
 }
 return bus_rescan_devices_helper(dev, ((void*)0));
}
