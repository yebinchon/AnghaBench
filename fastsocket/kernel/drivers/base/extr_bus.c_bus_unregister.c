
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {TYPE_1__* p; int name; } ;
struct TYPE_2__ {int subsys; int * devices_kset; int * drivers_kset; } ;


 int bus_attr_uevent ;
 int bus_remove_attrs (struct bus_type*) ;
 int bus_remove_file (struct bus_type*,int *) ;
 int kfree (TYPE_1__*) ;
 int kset_unregister (int *) ;
 int pr_debug (char*,int ) ;
 int remove_probe_files (struct bus_type*) ;

void bus_unregister(struct bus_type *bus)
{
 pr_debug("bus: '%s': unregistering\n", bus->name);
 bus_remove_attrs(bus);
 remove_probe_files(bus);
 kset_unregister(bus->p->drivers_kset);
 kset_unregister(bus->p->devices_kset);
 bus_remove_file(bus, &bus_attr_uevent);
 kset_unregister(&bus->p->subsys);
 kfree(bus->p);
 bus->p = ((void*)0);
}
