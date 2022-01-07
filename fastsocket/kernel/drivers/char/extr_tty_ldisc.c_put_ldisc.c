
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int owner; int refcount; } ;
struct tty_ldisc {struct tty_ldisc_ops* ops; int users; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int kfree (struct tty_ldisc*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int module_put (int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_ldisc_lock ;

__attribute__((used)) static void put_ldisc(struct tty_ldisc *ld)
{
 unsigned long flags;

 if (WARN_ON_ONCE(!ld))
  return;
 local_irq_save(flags);
 if (atomic_dec_and_lock(&ld->users, &tty_ldisc_lock)) {
  struct tty_ldisc_ops *ldo = ld->ops;

  ldo->refcount--;
  module_put(ldo->owner);
  spin_unlock_irqrestore(&tty_ldisc_lock, flags);

  kfree(ld);
  return;
 }
 local_irq_restore(flags);
}
