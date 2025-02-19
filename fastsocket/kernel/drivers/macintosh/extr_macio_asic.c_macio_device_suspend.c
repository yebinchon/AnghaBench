
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_driver {int (* suspend ) (struct macio_dev*,int ) ;} ;
struct macio_dev {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int pm_message_t ;


 int stub1 (struct macio_dev*,int ) ;
 struct macio_dev* to_macio_device (struct device*) ;
 struct macio_driver* to_macio_driver (scalar_t__) ;

__attribute__((used)) static int macio_device_suspend(struct device *dev, pm_message_t state)
{
 struct macio_dev * macio_dev = to_macio_device(dev);
 struct macio_driver * drv = to_macio_driver(dev->driver);

 if (dev->driver && drv->suspend)
  return drv->suspend(macio_dev, state);
 return 0;
}
