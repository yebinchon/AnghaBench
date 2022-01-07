
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int queue; } ;


 int __ttm_read_lock (struct ttm_lock*) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

int ttm_read_lock(struct ttm_lock *lock, bool interruptible)
{
 int ret = 0;

 if (interruptible)
  ret = wait_event_interruptible(lock->queue,
            __ttm_read_lock(lock));
 else
  wait_event(lock->queue, __ttm_read_lock(lock));
 return ret;
}
