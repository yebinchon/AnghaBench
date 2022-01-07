
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_driver {int (* shutdown ) (struct macio_dev*) ;} ;
struct macio_dev {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct macio_dev*) ;
 struct macio_dev* to_macio_device (struct device*) ;
 struct macio_driver* to_macio_driver (scalar_t__) ;

__attribute__((used)) static void macio_device_shutdown(struct device *dev)
{
 struct macio_dev * macio_dev = to_macio_device(dev);
 struct macio_driver * drv = to_macio_driver(dev->driver);

 if (dev->driver && drv->shutdown)
  drv->shutdown(macio_dev);
}
