
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_dma_pool {int current_count; TYPE_1__* elements; } ;
struct lpfc_hba {int * lpfc_scsi_dma_buf_pool; int * lpfc_mbuf_pool; int * mbox_mem_pool; int * nlp_mem_pool; int * rrq_pool; int * lpfc_hbq_pool; int * lpfc_hrb_pool; int * lpfc_drb_pool; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
struct TYPE_2__ {int phys; int virt; } ;


 int kfree (TYPE_1__*) ;
 int lpfc_sli_hbqbuf_free_all (struct lpfc_hba*) ;
 int mempool_destroy (int *) ;
 int pci_pool_destroy (int *) ;
 int pci_pool_free (int *,int ,int ) ;

void
lpfc_mem_free(struct lpfc_hba *phba)
{
 int i;
 struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;


 lpfc_sli_hbqbuf_free_all(phba);
 if (phba->lpfc_drb_pool)
  pci_pool_destroy(phba->lpfc_drb_pool);
 phba->lpfc_drb_pool = ((void*)0);
 if (phba->lpfc_hrb_pool)
  pci_pool_destroy(phba->lpfc_hrb_pool);
 phba->lpfc_hrb_pool = ((void*)0);

 if (phba->lpfc_hbq_pool)
  pci_pool_destroy(phba->lpfc_hbq_pool);
 phba->lpfc_hbq_pool = ((void*)0);

 if (phba->rrq_pool)
  mempool_destroy(phba->rrq_pool);
 phba->rrq_pool = ((void*)0);


 mempool_destroy(phba->nlp_mem_pool);
 phba->nlp_mem_pool = ((void*)0);


 mempool_destroy(phba->mbox_mem_pool);
 phba->mbox_mem_pool = ((void*)0);


 for (i = 0; i < pool->current_count; i++)
  pci_pool_free(phba->lpfc_mbuf_pool, pool->elements[i].virt,
         pool->elements[i].phys);
 kfree(pool->elements);

 pci_pool_destroy(phba->lpfc_mbuf_pool);
 phba->lpfc_mbuf_pool = ((void*)0);


 pci_pool_destroy(phba->lpfc_scsi_dma_buf_pool);
 phba->lpfc_scsi_dma_buf_pool = ((void*)0);

 return;
}
