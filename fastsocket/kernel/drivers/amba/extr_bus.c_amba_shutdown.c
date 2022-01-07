
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct amba_driver {int (* shutdown ) (int ) ;} ;


 int stub1 (int ) ;
 int to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (int ) ;

__attribute__((used)) static void amba_shutdown(struct device *dev)
{
 struct amba_driver *drv = to_amba_driver(dev->driver);
 drv->shutdown(to_amba_device(dev));
}
