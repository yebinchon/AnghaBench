
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int dummy; } ;
struct ttm_lock {struct ttm_object_file* vt_holder; int base; int queue; int lock; int flags; } ;


 int TTM_VT_LOCK_PENDING ;
 int __ttm_vt_lock (struct ttm_lock*) ;
 int __ttm_vt_unlock (struct ttm_lock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_base_object_init (struct ttm_object_file*,int *,int,int ,int *,int *) ;
 int ttm_lock_type ;
 int ttm_vt_lock_remove ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;
 int wake_up_all (int *) ;

int ttm_vt_lock(struct ttm_lock *lock,
  bool interruptible,
  struct ttm_object_file *tfile)
{
 int ret = 0;

 if (interruptible) {
  ret = wait_event_interruptible(lock->queue,
            __ttm_vt_lock(lock));
  if (unlikely(ret != 0)) {
   spin_lock(&lock->lock);
   lock->flags &= ~TTM_VT_LOCK_PENDING;
   wake_up_all(&lock->queue);
   spin_unlock(&lock->lock);
   return ret;
  }
 } else
  wait_event(lock->queue, __ttm_vt_lock(lock));







 ret = ttm_base_object_init(tfile, &lock->base, 0,
       ttm_lock_type, &ttm_vt_lock_remove, ((void*)0));
 if (ret)
  (void)__ttm_vt_unlock(lock);
 else
  lock->vt_holder = tfile;

 return ret;
}
