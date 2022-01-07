
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int lock; int queue; int flags; } ;


 int TTM_SUSPEND_LOCK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

void ttm_suspend_unlock(struct ttm_lock *lock)
{
 spin_lock(&lock->lock);
 lock->flags &= ~TTM_SUSPEND_LOCK;
 wake_up_all(&lock->queue);
 spin_unlock(&lock->lock);
}
