
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_lock {scalar_t__ count; int lock; int waiters; } ;


 int BUG_ON (int) ;
 int __del_holder (struct block_lock*,int ) ;
 int __wake_many (struct block_lock*) ;
 int current ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bl_up_read(struct block_lock *lock)
{
 spin_lock(&lock->lock);
 BUG_ON(lock->count <= 0);
 __del_holder(lock, current);
 --lock->count;
 if (!list_empty(&lock->waiters))
  __wake_many(lock);
 spin_unlock(&lock->lock);
}
