
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {unsigned long dma_32bit_pfn; int * cached32_node; int rbroot; int iova_rbtree_lock; } ;


 int RB_ROOT ;
 int spin_lock_init (int *) ;

void
init_iova_domain(struct iova_domain *iovad, unsigned long pfn_32bit)
{
 spin_lock_init(&iovad->iova_rbtree_lock);
 iovad->rbroot = RB_ROOT;
 iovad->cached32_node = ((void*)0);
 iovad->dma_32bit_pfn = pfn_32bit;
}
