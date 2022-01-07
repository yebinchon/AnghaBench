
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int sdio_bus_type ;

int sdio_register_bus(void)
{
 return bus_register(&sdio_bus_type);
}
