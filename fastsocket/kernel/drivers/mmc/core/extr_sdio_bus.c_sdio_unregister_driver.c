
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct sdio_driver {TYPE_1__ drv; } ;


 int driver_unregister (TYPE_1__*) ;
 int sdio_bus_type ;

void sdio_unregister_driver(struct sdio_driver *drv)
{
 drv->drv.bus = &sdio_bus_type;
 driver_unregister(&drv->drv);
}
