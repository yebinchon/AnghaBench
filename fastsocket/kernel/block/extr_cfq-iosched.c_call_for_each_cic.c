
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int dummy; } ;


 int __call_for_each_cic (struct io_context*,void (*) (struct io_context*,struct cfq_io_context*)) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
call_for_each_cic(struct io_context *ioc,
    void (*func)(struct io_context *, struct cfq_io_context *))
{
 rcu_read_lock();
 __call_for_each_cic(ioc, func);
 rcu_read_unlock();
}
