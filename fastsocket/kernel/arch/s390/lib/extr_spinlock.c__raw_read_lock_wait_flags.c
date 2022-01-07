
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ raw_rwlock_t ;


 int __raw_read_can_lock (TYPE_1__*) ;
 unsigned int _raw_compare_and_swap (int*,unsigned int,unsigned int) ;
 int _raw_yield () ;
 int local_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int spin_retry ;

void _raw_read_lock_wait_flags(raw_rwlock_t *rw, unsigned long flags)
{
 unsigned int old;
 int count = spin_retry;

 local_irq_restore(flags);
 while (1) {
  if (count-- <= 0) {
   _raw_yield();
   count = spin_retry;
  }
  if (!__raw_read_can_lock(rw))
   continue;
  old = rw->lock & 0x7fffffffU;
  local_irq_disable();
  if (_raw_compare_and_swap(&rw->lock, old, old + 1) == old)
   return;
 }
}
