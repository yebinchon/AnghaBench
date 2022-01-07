
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_dma_pool {size_t current_count; size_t max_count; TYPE_1__* elements; } ;
struct lpfc_hba {int lpfc_mbuf_pool; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int phys; void* virt; } ;


 int pci_pool_free (int ,void*,int ) ;

void
__lpfc_mbuf_free(struct lpfc_hba * phba, void *virt, dma_addr_t dma)
{
 struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;

 if (pool->current_count < pool->max_count) {
  pool->elements[pool->current_count].virt = virt;
  pool->elements[pool->current_count].phys = dma;
  pool->current_count++;
 } else {
  pci_pool_free(phba->lpfc_mbuf_pool, virt, dma);
 }
 return;
}
