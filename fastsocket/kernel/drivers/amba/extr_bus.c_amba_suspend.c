
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ driver; } ;
struct amba_driver {int (* suspend ) (int ,int ) ;} ;
typedef int pm_message_t ;


 int stub1 (int ,int ) ;
 int to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (scalar_t__) ;

__attribute__((used)) static int amba_suspend(struct device *dev, pm_message_t state)
{
 struct amba_driver *drv = to_amba_driver(dev->driver);
 int ret = 0;

 if (dev->driver && drv->suspend)
  ret = drv->suspend(to_amba_device(dev), state);
 return ret;
}
