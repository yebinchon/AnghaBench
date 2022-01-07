
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_spinlock {int dummy; } ;


 int __xen_spin_lock (struct raw_spinlock*,int) ;

__attribute__((used)) static void xen_spin_lock(struct raw_spinlock *lock)
{
 __xen_spin_lock(lock, 0);
}
