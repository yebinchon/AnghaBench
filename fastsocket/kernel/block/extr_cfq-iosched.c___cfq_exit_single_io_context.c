
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int ioc_data; } ;
struct cfq_io_context {unsigned long dead_key; int ** cfqq; int * key; int queue_list; struct io_context* ioc; } ;
struct cfq_data {int dummy; } ;


 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 int cfq_exit_cfqq (struct cfq_data*,int *) ;
 int list_del_init (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct cfq_io_context* rcu_dereference (int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __cfq_exit_single_io_context(struct cfq_data *cfqd,
      struct cfq_io_context *cic)
{
 struct io_context *ioc = cic->ioc;

 list_del_init(&cic->queue_list);




 smp_wmb();
 cic->dead_key = (unsigned long) cic->key;
 cic->key = ((void*)0);

 if (rcu_dereference(ioc->ioc_data) == cic) {
  spin_lock(&ioc->lock);
  rcu_assign_pointer(ioc->ioc_data, ((void*)0));
  spin_unlock(&ioc->lock);
 }

 if (cic->cfqq[BLK_RW_ASYNC]) {
  cfq_exit_cfqq(cfqd, cic->cfqq[BLK_RW_ASYNC]);
  cic->cfqq[BLK_RW_ASYNC] = ((void*)0);
 }

 if (cic->cfqq[BLK_RW_SYNC]) {
  cfq_exit_cfqq(cfqd, cic->cfqq[BLK_RW_SYNC]);
  cic->cfqq[BLK_RW_SYNC] = ((void*)0);
 }
}
