
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiter {int list; scalar_t__ wants_write; int task; } ;
struct block_lock {int lock; int waiters; int count; } ;


 int __add_holder (struct block_lock*,int ) ;
 scalar_t__ __available_for_read (struct block_lock*) ;
 int __check_holder (struct block_lock*) ;
 int __wait (struct waiter*) ;
 int current ;
 int get_task_struct (int ) ;
 int list_add_tail (int *,int *) ;
 int put_task_struct (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bl_down_read(struct block_lock *lock)
{
 int r;
 struct waiter w;

 spin_lock(&lock->lock);
 r = __check_holder(lock);
 if (r) {
  spin_unlock(&lock->lock);
  return r;
 }

 if (__available_for_read(lock)) {
  lock->count++;
  __add_holder(lock, current);
  spin_unlock(&lock->lock);
  return 0;
 }

 get_task_struct(current);

 w.task = current;
 w.wants_write = 0;
 list_add_tail(&w.list, &lock->waiters);
 spin_unlock(&lock->lock);

 __wait(&w);
 put_task_struct(current);
 return 0;
}
