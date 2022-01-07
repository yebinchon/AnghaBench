
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int ioc_data; int radix_root; } ;
struct cfq_io_context {struct cfq_data* key; } ;
struct cfq_data {int dummy; } ;


 int cfq_drop_dead_cic (struct cfq_data*,struct io_context*,struct cfq_io_context*) ;
 struct cfq_io_context* radix_tree_lookup (int *,unsigned long) ;
 int rcu_assign_pointer (int ,struct cfq_io_context*) ;
 struct cfq_io_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct cfq_io_context *
cfq_cic_lookup(struct cfq_data *cfqd, struct io_context *ioc)
{
 struct cfq_io_context *cic;
 unsigned long flags;
 void *k;

 if (unlikely(!ioc))
  return ((void*)0);

 rcu_read_lock();




 cic = rcu_dereference(ioc->ioc_data);
 if (cic && cic->key == cfqd) {
  rcu_read_unlock();
  return cic;
 }

 do {
  cic = radix_tree_lookup(&ioc->radix_root, (unsigned long) cfqd);
  rcu_read_unlock();
  if (!cic)
   break;

  k = cic->key;
  if (unlikely(!k)) {
   cfq_drop_dead_cic(cfqd, ioc, cic);
   rcu_read_lock();
   continue;
  }

  spin_lock_irqsave(&ioc->lock, flags);
  rcu_assign_pointer(ioc->ioc_data, cic);
  spin_unlock_irqrestore(&ioc->lock, flags);
  break;
 } while (1);

 return cic;
}
