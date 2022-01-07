
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct superhyway_driver {TYPE_1__ drv; int name; } ;


 int driver_register (TYPE_1__*) ;
 int superhyway_bus_type ;

int superhyway_register_driver(struct superhyway_driver *drv)
{
 drv->drv.name = drv->name;
 drv->drv.bus = &superhyway_bus_type;

 return driver_register(&drv->drv);
}
