
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct eisa_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int eisa_bus_type ;

int eisa_driver_register (struct eisa_driver *edrv)
{
 edrv->driver.bus = &eisa_bus_type;
 return driver_register (&edrv->driver);
}
