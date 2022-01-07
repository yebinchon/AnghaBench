
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_spinlock {int spinners; scalar_t__ lock; } ;
struct raw_spinlock {int dummy; } ;


 int ADD_STATS (int ,int) ;
 int mb () ;
 int released ;
 int smp_wmb () ;
 scalar_t__ unlikely (int ) ;
 int xen_spin_unlock_slow (struct xen_spinlock*) ;

__attribute__((used)) static void xen_spin_unlock(struct raw_spinlock *lock)
{
 struct xen_spinlock *xl = (struct xen_spinlock *)lock;

 ADD_STATS(released, 1);

 smp_wmb();
 xl->lock = 0;







 mb();

 if (unlikely(xl->spinners))
  xen_spin_unlock_slow(xl);
}
