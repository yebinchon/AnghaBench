
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {int rw; int flags; int lock; int signal; int kill_takers; } ;


 int TTM_WRITE_LOCK_PENDING ;
 int current ;
 int send_sig (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool __ttm_write_lock(struct ttm_lock *lock)
{
 bool locked = 0;

 spin_lock(&lock->lock);
 if (unlikely(lock->kill_takers)) {
  send_sig(lock->signal, current, 0);
  spin_unlock(&lock->lock);
  return 0;
 }
 if (lock->rw == 0 && ((lock->flags & ~TTM_WRITE_LOCK_PENDING) == 0)) {
  lock->rw = -1;
  lock->flags &= ~TTM_WRITE_LOCK_PENDING;
  locked = 1;
 } else {
  lock->flags |= TTM_WRITE_LOCK_PENDING;
 }
 spin_unlock(&lock->lock);
 return locked;
}
