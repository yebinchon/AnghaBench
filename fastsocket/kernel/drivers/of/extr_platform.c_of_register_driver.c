
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bus_type* bus; scalar_t__ owner; scalar_t__ name; } ;
struct of_platform_driver {TYPE_1__ driver; scalar_t__ owner; scalar_t__ name; } ;
struct bus_type {int dummy; } ;


 int driver_register (TYPE_1__*) ;

int of_register_driver(struct of_platform_driver *drv, struct bus_type *bus)
{

 if (!drv->driver.name)
  drv->driver.name = drv->name;
 if (!drv->driver.owner)
  drv->driver.owner = drv->owner;
 drv->driver.bus = bus;


 return driver_register(&drv->driver);
}
