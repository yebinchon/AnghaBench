
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sir_dev {struct dongle_driver* dongle_drv; } ;
struct dongle_driver {int owner; int (* close ) (struct sir_dev*) ;} ;


 int module_put (int ) ;
 int stub1 (struct sir_dev*) ;

int sirdev_put_dongle(struct sir_dev *dev)
{
 const struct dongle_driver *drv = dev->dongle_drv;

 if (drv) {
  if (drv->close)
   drv->close(dev);

  dev->dongle_drv = ((void*)0);
  module_put(drv->owner);
 }

 return 0;
}
