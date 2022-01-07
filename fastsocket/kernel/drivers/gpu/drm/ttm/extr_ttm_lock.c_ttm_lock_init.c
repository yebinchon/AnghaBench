
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int kill_takers; int signal; scalar_t__ flags; scalar_t__ rw; int queue; int lock; } ;


 int SIGKILL ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void ttm_lock_init(struct ttm_lock *lock)
{
 spin_lock_init(&lock->lock);
 init_waitqueue_head(&lock->queue);
 lock->rw = 0;
 lock->flags = 0;
 lock->kill_takers = 0;
 lock->signal = SIGKILL;
}
