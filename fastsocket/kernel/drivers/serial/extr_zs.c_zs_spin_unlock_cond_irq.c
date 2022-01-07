
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void zs_spin_unlock_cond_irq(spinlock_t *lock, int irq)
{
 if (irq)
  spin_unlock_irq(lock);
 else
  spin_unlock(lock);
}
