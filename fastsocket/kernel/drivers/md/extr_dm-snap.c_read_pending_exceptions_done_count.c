
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _pending_exceptions_done_count ;
 int _pending_exceptions_done_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static uint64_t read_pending_exceptions_done_count(void)
{
 uint64_t pending_exceptions_done;

 spin_lock(&_pending_exceptions_done_spinlock);
 pending_exceptions_done = _pending_exceptions_done_count;
 spin_unlock(&_pending_exceptions_done_spinlock);

 return pending_exceptions_done;
}
