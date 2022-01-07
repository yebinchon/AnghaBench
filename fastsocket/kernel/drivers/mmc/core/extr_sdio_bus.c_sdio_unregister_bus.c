
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int sdio_bus_type ;

void sdio_unregister_bus(void)
{
 bus_unregister(&sdio_bus_type);
}
