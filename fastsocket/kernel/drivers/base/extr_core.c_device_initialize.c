
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kset; } ;
struct device {int devres_head; int devres_lock; int sem; int dma_pools; TYPE_1__ kobj; } ;


 int INIT_LIST_HEAD (int *) ;
 int device_init_wakeup (struct device*,int ) ;
 int device_ktype ;
 int device_pm_init (struct device*) ;
 int devices_kset ;
 int init_MUTEX (int *) ;
 int kobject_init (TYPE_1__*,int *) ;
 int set_dev_node (struct device*,int) ;
 int spin_lock_init (int *) ;

void device_initialize(struct device *dev)
{
 dev->kobj.kset = devices_kset;
 kobject_init(&dev->kobj, &device_ktype);
 INIT_LIST_HEAD(&dev->dma_pools);
 init_MUTEX(&dev->sem);
 spin_lock_init(&dev->devres_lock);
 INIT_LIST_HEAD(&dev->devres_head);
 device_init_wakeup(dev, 0);
 device_pm_init(dev);
 set_dev_node(dev, -1);
}
