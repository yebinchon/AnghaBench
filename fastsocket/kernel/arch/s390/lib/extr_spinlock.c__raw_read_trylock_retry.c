
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ raw_rwlock_t ;


 int __raw_read_can_lock (TYPE_1__*) ;
 unsigned int _raw_compare_and_swap (int*,unsigned int,unsigned int) ;
 int spin_retry ;

int _raw_read_trylock_retry(raw_rwlock_t *rw)
{
 unsigned int old;
 int count = spin_retry;

 while (count-- > 0) {
  if (!__raw_read_can_lock(rw))
   continue;
  old = rw->lock & 0x7fffffffU;
  if (_raw_compare_and_swap(&rw->lock, old, old + 1) == old)
   return 1;
 }
 return 0;
}
