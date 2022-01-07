
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int owner; int refcount; } ;


 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_ldisc_lock ;

__attribute__((used)) static void put_ldops(struct tty_ldisc_ops *ldops)
{
 unsigned long flags;

 spin_lock_irqsave(&tty_ldisc_lock, flags);
 ldops->refcount--;
 module_put(ldops->owner);
 spin_unlock_irqrestore(&tty_ldisc_lock, flags);
}
