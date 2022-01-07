
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_context {TYPE_1__* aic; int refcount; } ;
struct TYPE_2__ {int (* dtor ) (TYPE_1__*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 scalar_t__ atomic_long_read (int *) ;
 int cfq_dtor (struct io_context*) ;
 int iocontext_cachep ;
 int kmem_cache_free (int ,struct io_context*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (TYPE_1__*) ;

int put_io_context(struct io_context *ioc)
{
 if (ioc == ((void*)0))
  return 1;

 BUG_ON(atomic_long_read(&ioc->refcount) == 0);

 if (atomic_long_dec_and_test(&ioc->refcount)) {
  rcu_read_lock();
  if (ioc->aic && ioc->aic->dtor)
   ioc->aic->dtor(ioc->aic);
  cfq_dtor(ioc);
  rcu_read_unlock();

  kmem_cache_free(iocontext_cachep, ioc);
  return 1;
 }
 return 0;
}
