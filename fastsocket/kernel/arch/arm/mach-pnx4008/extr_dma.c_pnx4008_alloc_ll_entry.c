
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnx4008_dma_ll {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int count; int dma_addr; void* vaddr; scalar_t__ cur; } ;


 int ll_lock ;
 TYPE_1__ ll_pool ;
 int memset (struct pnx4008_dma_ll*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct pnx4008_dma_ll *pnx4008_alloc_ll_entry(dma_addr_t * ll_dma)
{
 struct pnx4008_dma_ll *ll = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&ll_lock, flags);
 if (ll_pool.count > 4) {
  ll = *(struct pnx4008_dma_ll **) ll_pool.cur;
  *ll_dma = ll_pool.dma_addr + ((void *)ll - ll_pool.vaddr);
  *(void **)ll_pool.cur = **(void ***)ll_pool.cur;
  memset(ll, 0, sizeof(*ll));
  ll_pool.count--;
 }
 spin_unlock_irqrestore(&ll_lock, flags);

 return ll;
}
