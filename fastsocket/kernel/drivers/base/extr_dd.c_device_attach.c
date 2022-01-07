
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int sem; int bus; int * driver; TYPE_1__* p; } ;
struct TYPE_2__ {int knode_driver; } ;


 int __device_attach ;
 int bus_for_each_drv (int ,int *,struct device*,int ) ;
 int device_bind_driver (struct device*) ;
 int down (int *) ;
 scalar_t__ klist_node_attached (int *) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int up (int *) ;

int device_attach(struct device *dev)
{
 int ret = 0;

 down(&dev->sem);
 if (dev->driver) {
  if (klist_node_attached(&dev->p->knode_driver)) {
   ret = 1;
   goto out_unlock;
  }
  ret = device_bind_driver(dev);
  if (ret == 0)
   ret = 1;
  else {
   dev->driver = ((void*)0);
   ret = 0;
  }
 } else {
  pm_runtime_get_noresume(dev);
  ret = bus_for_each_drv(dev->bus, ((void*)0), dev, __device_attach);
  pm_runtime_put_sync(dev);
 }
out_unlock:
 up(&dev->sem);
 return ret;
}
