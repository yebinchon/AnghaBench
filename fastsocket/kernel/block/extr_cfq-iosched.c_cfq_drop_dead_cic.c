
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int radix_root; struct cfq_io_context* ioc_data; } ;
struct cfq_io_context {int cic_list; int queue_list; } ;
struct cfq_data {int dummy; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int cfq_cic_free (struct cfq_io_context*) ;
 int hlist_del_rcu (int *) ;
 int list_empty (int *) ;
 int radix_tree_delete (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
cfq_drop_dead_cic(struct cfq_data *cfqd, struct io_context *ioc,
    struct cfq_io_context *cic)
{
 unsigned long flags;

 WARN_ON(!list_empty(&cic->queue_list));

 spin_lock_irqsave(&ioc->lock, flags);

 BUG_ON(ioc->ioc_data == cic);

 radix_tree_delete(&ioc->radix_root, (unsigned long) cfqd);
 hlist_del_rcu(&cic->cic_list);
 spin_unlock_irqrestore(&ioc->lock, flags);

 cfq_cic_free(cic);
}
