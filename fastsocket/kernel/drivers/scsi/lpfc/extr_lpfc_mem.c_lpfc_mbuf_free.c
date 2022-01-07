
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int hbalock; } ;
typedef int dma_addr_t ;


 int __lpfc_mbuf_free (struct lpfc_hba*,void*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_mbuf_free(struct lpfc_hba * phba, void *virt, dma_addr_t dma)
{
 unsigned long iflags;

 spin_lock_irqsave(&phba->hbalock, iflags);
 __lpfc_mbuf_free(phba, virt, dma);
 spin_unlock_irqrestore(&phba->hbalock, iflags);
 return;
}
