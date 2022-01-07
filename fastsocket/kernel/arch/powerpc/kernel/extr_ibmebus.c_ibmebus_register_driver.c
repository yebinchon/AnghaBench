
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_platform_driver {int match_table; } ;


 int ibmebus_bus_type ;
 int ibmebus_create_devices (int ) ;
 int of_register_driver (struct of_platform_driver*,int *) ;

int ibmebus_register_driver(struct of_platform_driver *drv)
{

 ibmebus_create_devices(drv->match_table);

 return of_register_driver(drv, &ibmebus_bus_type);
}
