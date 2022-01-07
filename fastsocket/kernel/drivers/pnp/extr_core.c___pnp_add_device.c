
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dev; TYPE_1__* protocol; int protocol_list; int global_list; int status; } ;
struct TYPE_2__ {int devices; } ;


 int PNP_READY ;
 int device_register (int *) ;
 int list_add_tail (int *,int *) ;
 int pnp_fixup_device (struct pnp_dev*) ;
 int pnp_global ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __pnp_add_device(struct pnp_dev *dev)
{
 pnp_fixup_device(dev);
 dev->status = PNP_READY;
 spin_lock(&pnp_lock);
 list_add_tail(&dev->global_list, &pnp_global);
 list_add_tail(&dev->protocol_list, &dev->protocol->devices);
 spin_unlock(&pnp_lock);
 return device_register(&dev->dev);
}
