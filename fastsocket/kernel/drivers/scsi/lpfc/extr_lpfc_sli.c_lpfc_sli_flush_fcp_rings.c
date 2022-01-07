
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int txcmplq; int txq; } ;
struct lpfc_sli {size_t fcp_ring; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {int hbalock; int hba_flag; struct lpfc_sli sli; } ;


 int HBA_FCP_IOQ_FLUSH ;
 int IOERR_SLI_DOWN ;
 int IOSTAT_LOCAL_REJECT ;
 int LIST_HEAD (int ) ;
 int list_splice_init (int *,int *) ;
 int lpfc_sli_cancel_iocbs (struct lpfc_hba*,int *,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int txcmplq ;
 int txq ;

void
lpfc_sli_flush_fcp_rings(struct lpfc_hba *phba)
{
 LIST_HEAD(txq);
 LIST_HEAD(txcmplq);
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *pring;


 pring = &psli->ring[psli->fcp_ring];

 spin_lock_irq(&phba->hbalock);

 list_splice_init(&pring->txq, &txq);


 list_splice_init(&pring->txcmplq, &txcmplq);


 phba->hba_flag |= HBA_FCP_IOQ_FLUSH;
 spin_unlock_irq(&phba->hbalock);


 lpfc_sli_cancel_iocbs(phba, &txq, IOSTAT_LOCAL_REJECT,
         IOERR_SLI_DOWN);


 lpfc_sli_cancel_iocbs(phba, &txcmplq, IOSTAT_LOCAL_REJECT,
         IOERR_SLI_DOWN);
}
