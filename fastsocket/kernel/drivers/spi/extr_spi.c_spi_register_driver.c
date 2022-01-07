
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; } ;
struct spi_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; } ;


 int driver_register (TYPE_1__*) ;
 int spi_bus_type ;
 int spi_drv_probe ;
 int spi_drv_remove ;
 int spi_drv_shutdown ;

int spi_register_driver(struct spi_driver *sdrv)
{
 sdrv->driver.bus = &spi_bus_type;
 if (sdrv->probe)
  sdrv->driver.probe = spi_drv_probe;
 if (sdrv->remove)
  sdrv->driver.remove = spi_drv_remove;
 if (sdrv->shutdown)
  sdrv->driver.shutdown = spi_drv_shutdown;
 return driver_register(&sdrv->driver);
}
