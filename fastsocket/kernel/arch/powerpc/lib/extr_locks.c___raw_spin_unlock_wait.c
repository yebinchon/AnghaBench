
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ slock; } ;
typedef TYPE_1__ raw_spinlock_t ;


 int HMT_low () ;
 int HMT_medium () ;
 scalar_t__ SHARED_PROCESSOR ;
 int __spin_yield (TYPE_1__*) ;

void __raw_spin_unlock_wait(raw_spinlock_t *lock)
{
 while (lock->slock) {
  HMT_low();
  if (SHARED_PROCESSOR)
   __spin_yield(lock);
 }
 HMT_medium();
}
