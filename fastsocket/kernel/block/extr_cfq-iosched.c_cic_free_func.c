
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int radix_root; } ;
struct cfq_io_context {int cic_list; int dead_key; } ;


 int BUG_ON (int) ;
 int cfq_cic_free (struct cfq_io_context*) ;
 int hlist_del_rcu (int *) ;
 int radix_tree_delete (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cic_free_func(struct io_context *ioc, struct cfq_io_context *cic)
{
 unsigned long flags;

 BUG_ON(!cic->dead_key);

 spin_lock_irqsave(&ioc->lock, flags);
 radix_tree_delete(&ioc->radix_root, cic->dead_key);
 hlist_del_rcu(&cic->cic_list);
 spin_unlock_irqrestore(&ioc->lock, flags);

 cfq_cic_free(cic);
}
