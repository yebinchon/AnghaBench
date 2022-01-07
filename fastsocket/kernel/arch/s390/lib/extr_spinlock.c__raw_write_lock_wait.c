
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ raw_rwlock_t ;


 int __raw_write_can_lock (TYPE_1__*) ;
 scalar_t__ _raw_compare_and_swap (int *,int ,int) ;
 int _raw_yield () ;
 int spin_retry ;

void _raw_write_lock_wait(raw_rwlock_t *rw)
{
 int count = spin_retry;

 while (1) {
  if (count-- <= 0) {
   _raw_yield();
   count = spin_retry;
  }
  if (!__raw_write_can_lock(rw))
   continue;
  if (_raw_compare_and_swap(&rw->lock, 0, 0x80000000) == 0)
   return;
 }
}
