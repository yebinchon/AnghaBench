
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_driver {TYPE_2__* bus; TYPE_1__* p; int name; int suppress_bind_attrs; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int kobj; int knode_bus; } ;


 int bus_put (TYPE_2__*) ;
 int driver_attr_uevent ;
 int driver_detach (struct device_driver*) ;
 int driver_remove_attrs (TYPE_2__*,struct device_driver*) ;
 int driver_remove_file (struct device_driver*,int *) ;
 int klist_remove (int *) ;
 int kobject_put (int *) ;
 int module_remove_driver (struct device_driver*) ;
 int pr_debug (char*,int ,int ) ;
 int remove_bind_files (struct device_driver*) ;

void bus_remove_driver(struct device_driver *drv)
{
 if (!drv->bus)
  return;

 if (!drv->suppress_bind_attrs)
  remove_bind_files(drv);
 driver_remove_attrs(drv->bus, drv);
 driver_remove_file(drv, &driver_attr_uevent);
 klist_remove(&drv->p->knode_bus);
 pr_debug("bus: '%s': remove driver %s\n", drv->bus->name, drv->name);
 driver_detach(drv);
 module_remove_driver(drv);
 kobject_put(&drv->p->kobj);
 bus_put(drv->bus);
}
