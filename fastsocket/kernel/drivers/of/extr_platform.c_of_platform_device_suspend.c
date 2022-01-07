
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_platform_driver {int (* suspend ) (struct of_device*,int ) ;} ;
struct of_device {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int pm_message_t ;


 int stub1 (struct of_device*,int ) ;
 struct of_device* to_of_device (struct device*) ;
 struct of_platform_driver* to_of_platform_driver (scalar_t__) ;

__attribute__((used)) static int of_platform_device_suspend(struct device *dev, pm_message_t state)
{
 struct of_device *of_dev = to_of_device(dev);
 struct of_platform_driver *drv = to_of_platform_driver(dev->driver);
 int error = 0;

 if (dev->driver && drv->suspend)
  error = drv->suspend(of_dev, state);
 return error;
}
