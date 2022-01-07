
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiter {int wants_write; int list; int task; } ;
struct block_lock {int count; int lock; int waiters; } ;


 int __add_holder (struct block_lock*,int ) ;
 int __check_holder (struct block_lock*) ;
 int __wait (struct waiter*) ;
 int current ;
 int get_task_struct (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int put_task_struct (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bl_down_write(struct block_lock *lock)
{
 int r;
 struct waiter w;

 spin_lock(&lock->lock);
 r = __check_holder(lock);
 if (r) {
  spin_unlock(&lock->lock);
  return r;
 }

 if (lock->count == 0 && list_empty(&lock->waiters)) {
  lock->count = -1;
  __add_holder(lock, current);
  spin_unlock(&lock->lock);
  return 0;
 }

 get_task_struct(current);
 w.task = current;
 w.wants_write = 1;





 list_add(&w.list, &lock->waiters);
 spin_unlock(&lock->lock);

 __wait(&w);
 put_task_struct(current);

 return 0;
}
