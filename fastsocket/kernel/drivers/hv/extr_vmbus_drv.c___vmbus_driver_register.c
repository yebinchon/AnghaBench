
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; int * bus; struct module* owner; int name; } ;
struct hv_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int hv_bus ;
 int pr_info (char*,int ) ;
 int vmbus_exists () ;

int __vmbus_driver_register(struct hv_driver *hv_driver, struct module *owner, const char *mod_name)
{
 int ret;

 pr_info("registering driver %s\n", hv_driver->name);

 ret = vmbus_exists();
 if (ret < 0)
  return ret;

 hv_driver->driver.name = hv_driver->name;
 hv_driver->driver.owner = owner;
 hv_driver->driver.mod_name = mod_name;
 hv_driver->driver.bus = &hv_bus;

 ret = driver_register(&hv_driver->driver);

 return ret;
}
