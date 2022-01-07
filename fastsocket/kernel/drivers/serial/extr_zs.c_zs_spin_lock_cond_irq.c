
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;

__attribute__((used)) static void zs_spin_lock_cond_irq(spinlock_t *lock, int irq)
{
 if (irq)
  spin_lock_irq(lock);
 else
  spin_lock(lock);
}
