
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct device {TYPE_1__* parent; int sem; int driver; } ;
struct TYPE_2__ {int sem; } ;


 int down (int *) ;
 int driver_match_device (struct device_driver*,struct device*) ;
 int driver_probe_device (struct device_driver*,struct device*) ;
 int up (int *) ;

__attribute__((used)) static int __driver_attach(struct device *dev, void *data)
{
 struct device_driver *drv = data;
 if (!driver_match_device(drv, dev))
  return 0;

 if (dev->parent)
  down(&dev->parent->sem);
 down(&dev->sem);
 if (!dev->driver)
  driver_probe_device(drv, dev);
 up(&dev->sem);
 if (dev->parent)
  up(&dev->parent->sem);

 return 0;
}
