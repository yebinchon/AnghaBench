
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct memstick_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int memstick_bus_type ;

int memstick_register_driver(struct memstick_driver *drv)
{
 drv->driver.bus = &memstick_bus_type;

 return driver_register(&drv->driver);
}
