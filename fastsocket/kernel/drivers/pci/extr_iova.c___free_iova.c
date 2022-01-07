
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int iova_rbtree_lock; int rbroot; } ;
struct iova {int node; } ;


 int __cached_rbnode_delete_update (struct iova_domain*,struct iova*) ;
 int free_iova_mem (struct iova*) ;
 int rb_erase (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
__free_iova(struct iova_domain *iovad, struct iova *iova)
{
 unsigned long flags;

 spin_lock_irqsave(&iovad->iova_rbtree_lock, flags);
 __cached_rbnode_delete_update(iovad, iova);
 rb_erase(&iova->node, &iovad->rbroot);
 spin_unlock_irqrestore(&iovad->iova_rbtree_lock, flags);
 free_iova_mem(iova);
}
