
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; } ;
struct platform_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; } ;


 int driver_register (TYPE_1__*) ;
 int platform_bus_type ;
 int platform_drv_probe ;
 int platform_drv_remove ;
 int platform_drv_shutdown ;

int platform_driver_register(struct platform_driver *drv)
{
 drv->driver.bus = &platform_bus_type;
 if (drv->probe)
  drv->driver.probe = platform_drv_probe;
 if (drv->remove)
  drv->driver.remove = platform_drv_remove;
 if (drv->shutdown)
  drv->driver.shutdown = platform_drv_shutdown;

 return driver_register(&drv->driver);
}
