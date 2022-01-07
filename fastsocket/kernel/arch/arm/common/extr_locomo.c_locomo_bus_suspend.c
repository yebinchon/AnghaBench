
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomo_driver {int (* suspend ) (struct locomo_dev*,int ) ;} ;
struct locomo_dev {int dummy; } ;
struct device {int driver; } ;
typedef int pm_message_t ;


 struct locomo_dev* LOCOMO_DEV (struct device*) ;
 struct locomo_driver* LOCOMO_DRV (int ) ;
 int stub1 (struct locomo_dev*,int ) ;

__attribute__((used)) static int locomo_bus_suspend(struct device *dev, pm_message_t state)
{
 struct locomo_dev *ldev = LOCOMO_DEV(dev);
 struct locomo_driver *drv = LOCOMO_DRV(dev->driver);
 int ret = 0;

 if (drv && drv->suspend)
  ret = drv->suspend(ldev, state);
 return ret;
}
