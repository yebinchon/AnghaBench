
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; int protocol_list; int global_list; } ;


 int device_unregister (int *) ;
 int list_del (int *) ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __pnp_remove_device(struct pnp_dev *dev)
{
 spin_lock(&pnp_lock);
 list_del(&dev->global_list);
 list_del(&dev->protocol_list);
 spin_unlock(&pnp_lock);
 device_unregister(&dev->dev);
}
