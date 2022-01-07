
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct i2c_driver {TYPE_1__ driver; } ;


 int __detach_adapter ;
 int bus_for_each_dev (int *,int *,struct i2c_driver*,int ) ;
 int core_lock ;
 int driver_unregister (TYPE_1__*) ;
 int i2c_bus_type ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;

void i2c_del_driver(struct i2c_driver *driver)
{
 mutex_lock(&core_lock);
 bus_for_each_dev(&i2c_bus_type, ((void*)0), driver, __detach_adapter);
 mutex_unlock(&core_lock);

 driver_unregister(&driver->driver);
 pr_debug("i2c-core: driver [%s] unregistered\n", driver->driver.name);
}
