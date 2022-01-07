
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int i2o_bus_type ;
 int i2o_drivers ;
 int kfree (int ) ;

void i2o_driver_exit(void)
{
 bus_unregister(&i2o_bus_type);
 kfree(i2o_drivers);
}
