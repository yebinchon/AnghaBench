
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_lock {int ** holders; int waiters; scalar_t__ count; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_HOLDERS ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void bl_init(struct block_lock *lock)
{
 int i;

 spin_lock_init(&lock->lock);
 lock->count = 0;
 INIT_LIST_HEAD(&lock->waiters);
 for (i = 0; i < MAX_HOLDERS; i++)
  lock->holders[i] = ((void*)0);
}
