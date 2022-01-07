
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card_driver {int link; int global_list; } ;


 int list_del (int *) ;
 int pnp_lock ;
 int pnp_unregister_driver (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnp_unregister_card_driver(struct pnp_card_driver *drv)
{
 spin_lock(&pnp_lock);
 list_del(&drv->global_list);
 spin_unlock(&pnp_lock);
 pnp_unregister_driver(&drv->link);
}
