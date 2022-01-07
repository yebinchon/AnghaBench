
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {int lock; } ;
struct cardstate {unsigned int flags; struct gigaset_driver* driver; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void make_valid(struct cardstate *cs, unsigned mask)
{
 unsigned long flags;
 struct gigaset_driver *drv = cs->driver;
 spin_lock_irqsave(&drv->lock, flags);
 cs->flags |= mask;
 spin_unlock_irqrestore(&drv->lock, flags);
}
