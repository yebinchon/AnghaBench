
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_dma_pool {size_t current_count; TYPE_1__* elements; } ;
struct lpfc_hba {int hbalock; int lpfc_mbuf_pool; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int phys; void* virt; } ;


 int GFP_KERNEL ;
 int MEM_PRI ;
 void* pci_pool_alloc (int ,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void *
lpfc_mbuf_alloc(struct lpfc_hba *phba, int mem_flags, dma_addr_t *handle)
{
 struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;
 unsigned long iflags;
 void *ret;

 ret = pci_pool_alloc(phba->lpfc_mbuf_pool, GFP_KERNEL, handle);

 spin_lock_irqsave(&phba->hbalock, iflags);
 if (!ret && (mem_flags & MEM_PRI) && pool->current_count) {
  pool->current_count--;
  ret = pool->elements[pool->current_count].virt;
  *handle = pool->elements[pool->current_count].phys;
 }
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return ret;
}
