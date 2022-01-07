
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_lock {scalar_t__ count; int waiters; } ;


 scalar_t__ MAX_HOLDERS ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int __available_for_read(struct block_lock *lock)
{
 return lock->count >= 0 &&
  lock->count < MAX_HOLDERS &&
  list_empty(&lock->waiters);
}
