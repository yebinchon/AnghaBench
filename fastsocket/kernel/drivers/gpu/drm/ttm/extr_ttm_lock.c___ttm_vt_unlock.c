
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int flags; int lock; int queue; } ;


 int EINVAL ;
 int TTM_VT_LOCK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int __ttm_vt_unlock(struct ttm_lock *lock)
{
 int ret = 0;

 spin_lock(&lock->lock);
 if (unlikely(!(lock->flags & TTM_VT_LOCK)))
  ret = -EINVAL;
 lock->flags &= ~TTM_VT_LOCK;
 wake_up_all(&lock->queue);
 spin_unlock(&lock->lock);

 return ret;
}
