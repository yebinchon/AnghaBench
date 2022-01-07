
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int owner; int name; int * bus; } ;
struct ccw_driver {int owner; int name; struct device_driver driver; } ;


 int ccw_bus_type ;
 int driver_register (struct device_driver*) ;

int ccw_driver_register(struct ccw_driver *cdriver)
{
 struct device_driver *drv = &cdriver->driver;

 drv->bus = &ccw_bus_type;
 drv->name = cdriver->name;
 drv->owner = cdriver->owner;

 return driver_register(drv);
}
