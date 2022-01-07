
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct cx_drv {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int tiocx_bus_type ;

int cx_driver_register(struct cx_drv *cx_driver)
{
 cx_driver->driver.name = cx_driver->name;
 cx_driver->driver.bus = &tiocx_bus_type;

 return driver_register(&cx_driver->driver);
}
