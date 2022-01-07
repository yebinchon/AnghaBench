
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_spinlock {int dummy; } ;


 int __xen_spin_lock (struct raw_spinlock*,int) ;
 int raw_irqs_disabled_flags (unsigned long) ;

__attribute__((used)) static void xen_spin_lock_flags(struct raw_spinlock *lock, unsigned long flags)
{
 __xen_spin_lock(lock, !raw_irqs_disabled_flags(flags));
}
