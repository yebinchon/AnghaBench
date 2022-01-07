
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * ktype; int kset; } ;
struct TYPE_5__ {TYPE_3__ kobj; } ;
struct bus_type_private {int drivers_autoprobe; TYPE_1__ subsys; TYPE_1__* devices_kset; TYPE_1__* drivers_kset; int klist_drivers; int klist_devices; int bus_notifier; struct bus_type* bus; } ;
struct bus_type {struct bus_type_private* p; int name; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int add_probe_files (struct bus_type*) ;
 int bus_add_attrs (struct bus_type*) ;
 int bus_attr_uevent ;
 int bus_create_file (struct bus_type*,int *) ;
 int bus_kset ;
 int bus_ktype ;
 int bus_remove_file (struct bus_type*,int *) ;
 int kfree (struct bus_type_private*) ;
 int * klist_devices_get ;
 int * klist_devices_put ;
 int klist_init (int *,int *,int *) ;
 int kobject_set_name (TYPE_3__*,char*,int ) ;
 void* kset_create_and_add (char*,int *,TYPE_3__*) ;
 int kset_register (TYPE_1__*) ;
 int kset_unregister (TYPE_1__*) ;
 struct bus_type_private* kzalloc (int,int ) ;
 int pr_debug (char*,int ) ;
 int remove_probe_files (struct bus_type*) ;

int bus_register(struct bus_type *bus)
{
 int retval;
 struct bus_type_private *priv;

 priv = kzalloc(sizeof(struct bus_type_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->bus = bus;
 bus->p = priv;

 BLOCKING_INIT_NOTIFIER_HEAD(&priv->bus_notifier);

 retval = kobject_set_name(&priv->subsys.kobj, "%s", bus->name);
 if (retval)
  goto out;

 priv->subsys.kobj.kset = bus_kset;
 priv->subsys.kobj.ktype = &bus_ktype;
 priv->drivers_autoprobe = 1;

 retval = kset_register(&priv->subsys);
 if (retval)
  goto out;

 retval = bus_create_file(bus, &bus_attr_uevent);
 if (retval)
  goto bus_uevent_fail;

 priv->devices_kset = kset_create_and_add("devices", ((void*)0),
       &priv->subsys.kobj);
 if (!priv->devices_kset) {
  retval = -ENOMEM;
  goto bus_devices_fail;
 }

 priv->drivers_kset = kset_create_and_add("drivers", ((void*)0),
       &priv->subsys.kobj);
 if (!priv->drivers_kset) {
  retval = -ENOMEM;
  goto bus_drivers_fail;
 }

 klist_init(&priv->klist_devices, klist_devices_get, klist_devices_put);
 klist_init(&priv->klist_drivers, ((void*)0), ((void*)0));

 retval = add_probe_files(bus);
 if (retval)
  goto bus_probe_files_fail;

 retval = bus_add_attrs(bus);
 if (retval)
  goto bus_attrs_fail;

 pr_debug("bus: '%s': registered\n", bus->name);
 return 0;

bus_attrs_fail:
 remove_probe_files(bus);
bus_probe_files_fail:
 kset_unregister(bus->p->drivers_kset);
bus_drivers_fail:
 kset_unregister(bus->p->devices_kset);
bus_devices_fail:
 bus_remove_file(bus, &bus_attr_uevent);
bus_uevent_fail:
 kset_unregister(&bus->p->subsys);
 kfree(bus->p);
out:
 bus->p = ((void*)0);
 return retval;
}
