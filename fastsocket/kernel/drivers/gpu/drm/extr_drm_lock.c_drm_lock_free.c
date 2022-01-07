
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_lock_data {scalar_t__ kernel_waiters; int idle_has_lock; int lock_queue; int spinlock; TYPE_1__* hw_lock; } ;
struct TYPE_2__ {unsigned int lock; } ;


 int DRM_ERROR (char*,unsigned int,unsigned int) ;
 unsigned int _DRM_LOCKING_CONTEXT (unsigned int) ;
 scalar_t__ _DRM_LOCK_IS_HELD (unsigned int) ;
 unsigned int cmpxchg (unsigned int volatile*,unsigned int,unsigned int) ;
 int drm_lock_transfer (struct drm_lock_data*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up_interruptible (int *) ;

int drm_lock_free(struct drm_lock_data *lock_data, unsigned int context)
{
 unsigned int old, new, prev;
 volatile unsigned int *lock = &lock_data->hw_lock->lock;

 spin_lock_bh(&lock_data->spinlock);
 if (lock_data->kernel_waiters != 0) {
  drm_lock_transfer(lock_data, 0);
  lock_data->idle_has_lock = 1;
  spin_unlock_bh(&lock_data->spinlock);
  return 1;
 }
 spin_unlock_bh(&lock_data->spinlock);

 do {
  old = *lock;
  new = _DRM_LOCKING_CONTEXT(old);
  prev = cmpxchg(lock, old, new);
 } while (prev != old);

 if (_DRM_LOCK_IS_HELD(old) && _DRM_LOCKING_CONTEXT(old) != context) {
  DRM_ERROR("%d freed heavyweight lock held by %d\n",
     context, _DRM_LOCKING_CONTEXT(old));
  return 1;
 }
 wake_up_interruptible(&lock_data->lock_queue);
 return 0;
}
