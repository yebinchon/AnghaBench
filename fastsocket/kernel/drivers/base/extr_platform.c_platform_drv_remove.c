
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_driver {int (* remove ) (struct platform_device*) ;} ;
struct platform_device {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 struct platform_driver* to_platform_driver (int ) ;

__attribute__((used)) static int platform_drv_remove(struct device *_dev)
{
 struct platform_driver *drv = to_platform_driver(_dev->driver);
 struct platform_device *dev = to_platform_device(_dev);

 return drv->remove(dev);
}
