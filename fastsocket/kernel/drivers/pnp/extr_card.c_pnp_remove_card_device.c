
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int card_list; int * card; } ;


 int __pnp_remove_device (struct pnp_dev*) ;
 int list_del (int *) ;
 int pnp_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnp_remove_card_device(struct pnp_dev *dev)
{
 spin_lock(&pnp_lock);
 dev->card = ((void*)0);
 list_del(&dev->card_list);
 spin_unlock(&pnp_lock);
 __pnp_remove_device(dev);
}
