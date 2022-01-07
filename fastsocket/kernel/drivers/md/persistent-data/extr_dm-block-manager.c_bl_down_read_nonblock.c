
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_lock {int lock; int count; } ;


 int EWOULDBLOCK ;
 int __add_holder (struct block_lock*,int ) ;
 scalar_t__ __available_for_read (struct block_lock*) ;
 int __check_holder (struct block_lock*) ;
 int current ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bl_down_read_nonblock(struct block_lock *lock)
{
 int r;

 spin_lock(&lock->lock);
 r = __check_holder(lock);
 if (r)
  goto out;

 if (__available_for_read(lock)) {
  lock->count++;
  __add_holder(lock, current);
  r = 0;
 } else
  r = -EWOULDBLOCK;

out:
 spin_unlock(&lock->lock);
 return r;
}
