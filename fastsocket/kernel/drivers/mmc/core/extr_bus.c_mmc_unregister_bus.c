
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int mmc_bus_type ;

void mmc_unregister_bus(void)
{
 bus_unregister(&mmc_bus_type);
}
