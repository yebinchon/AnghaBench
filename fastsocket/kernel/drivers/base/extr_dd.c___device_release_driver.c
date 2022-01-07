
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_driver {int (* remove ) (struct device*) ;} ;
struct device {TYPE_3__* bus; TYPE_1__* p; struct device_driver* driver; } ;
struct TYPE_6__ {TYPE_2__* p; int (* remove ) (struct device*) ;} ;
struct TYPE_5__ {int bus_notifier; } ;
struct TYPE_4__ {int knode_driver; } ;


 int BUS_NOTIFY_UNBIND_DRIVER ;
 int BUS_NOTIFY_UNBOUND_DRIVER ;
 int blocking_notifier_call_chain (int *,int ,struct device*) ;
 int devres_release_all (struct device*) ;
 int driver_sysfs_remove (struct device*) ;
 int klist_remove (int *) ;
 int pm_runtime_barrier (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;

__attribute__((used)) static void __device_release_driver(struct device *dev)
{
 struct device_driver *drv;

 drv = dev->driver;
 if (drv) {
  pm_runtime_get_noresume(dev);
  pm_runtime_barrier(dev);

  driver_sysfs_remove(dev);

  if (dev->bus)
   blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
           BUS_NOTIFY_UNBIND_DRIVER,
           dev);

  if (dev->bus && dev->bus->remove)
   dev->bus->remove(dev);
  else if (drv->remove)
   drv->remove(dev);
  devres_release_all(dev);
  dev->driver = ((void*)0);
  klist_remove(&dev->p->knode_driver);
  if (dev->bus)
   blocking_notifier_call_chain(&dev->bus->p->bus_notifier,
           BUS_NOTIFY_UNBOUND_DRIVER,
           dev);

  pm_runtime_put_sync(dev);
 }
}
