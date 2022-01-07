
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int queue; } ;


 int __ttm_suspend_lock (struct ttm_lock*) ;
 int wait_event (int ,int ) ;

void ttm_suspend_lock(struct ttm_lock *lock)
{
 wait_event(lock->queue, __ttm_suspend_lock(lock));
}
