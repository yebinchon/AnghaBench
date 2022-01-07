
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_spinlock {scalar_t__ spinners; } ;
struct raw_spinlock {int dummy; } ;



__attribute__((used)) static int xen_spin_is_contended(struct raw_spinlock *lock)
{
 struct xen_spinlock *xl = (struct xen_spinlock *)lock;



 return xl->spinners != 0;
}
