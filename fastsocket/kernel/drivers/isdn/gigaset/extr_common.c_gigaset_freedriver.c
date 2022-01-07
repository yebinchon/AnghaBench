
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {struct gigaset_driver* cs; int list; } ;


 int driver_lock ;
 int gigaset_if_freedriver (struct gigaset_driver*) ;
 int kfree (struct gigaset_driver*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gigaset_freedriver(struct gigaset_driver *drv)
{
 unsigned long flags;

 spin_lock_irqsave(&driver_lock, flags);
 list_del(&drv->list);
 spin_unlock_irqrestore(&driver_lock, flags);

 gigaset_if_freedriver(drv);

 kfree(drv->cs);
 kfree(drv);
}
