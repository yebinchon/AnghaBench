
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct amba_driver {int (* remove ) (int ) ;} ;


 int stub1 (int ) ;
 int to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (int ) ;

__attribute__((used)) static int amba_remove(struct device *dev)
{
 struct amba_driver *drv = to_amba_driver(dev->driver);
 return drv->remove(to_amba_device(dev));
}
