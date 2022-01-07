
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_5__ {int name; TYPE_1__* bus; struct module* owner; } ;
struct i2c_driver {int clients; TYPE_2__ driver; } ;
struct TYPE_4__ {int p; } ;


 int EAGAIN ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int __attach_adapter ;
 int bus_for_each_dev (TYPE_1__*,int *,struct i2c_driver*,int ) ;
 int core_lock ;
 int driver_register (TYPE_2__*) ;
 TYPE_1__ i2c_bus_type ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 scalar_t__ unlikely (int ) ;

int i2c_register_driver(struct module *owner, struct i2c_driver *driver)
{
 int res;


 if (unlikely(WARN_ON(!i2c_bus_type.p)))
  return -EAGAIN;


 driver->driver.owner = owner;
 driver->driver.bus = &i2c_bus_type;




 res = driver_register(&driver->driver);
 if (res)
  return res;

 pr_debug("i2c-core: driver [%s] registered\n", driver->driver.name);

 INIT_LIST_HEAD(&driver->clients);

 mutex_lock(&core_lock);
 bus_for_each_dev(&i2c_bus_type, ((void*)0), driver, __attach_adapter);
 mutex_unlock(&core_lock);

 return 0;
}
