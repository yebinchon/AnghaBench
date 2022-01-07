
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {TYPE_4__* bus; TYPE_3__* p; int kobj; } ;
struct TYPE_9__ {int name; TYPE_2__* p; } ;
struct TYPE_8__ {int knode_bus; } ;
struct TYPE_7__ {TYPE_1__* devices_kset; } ;
struct TYPE_6__ {int kobj; } ;


 int bus_put (TYPE_4__*) ;
 char* dev_name (struct device*) ;
 int device_release_driver (struct device*) ;
 int device_remove_attrs (TYPE_4__*,struct device*) ;
 int klist_del (int *) ;
 scalar_t__ klist_node_attached (int *) ;
 int pr_debug (char*,int ,char*) ;
 int remove_deprecated_bus_links (struct device*) ;
 int sysfs_remove_link (int *,char*) ;

void bus_remove_device(struct device *dev)
{
 if (dev->bus) {
  sysfs_remove_link(&dev->kobj, "subsystem");
  remove_deprecated_bus_links(dev);
  sysfs_remove_link(&dev->bus->p->devices_kset->kobj,
      dev_name(dev));
  device_remove_attrs(dev->bus, dev);
  if (klist_node_attached(&dev->p->knode_bus))
   klist_del(&dev->p->knode_bus);

  pr_debug("bus: '%s': remove device %s\n",
    dev->bus->name, dev_name(dev));
  device_release_driver(dev);
  bus_put(dev->bus);
 }
}
