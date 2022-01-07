
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_sli_ring {int ring_lock; } ;
struct lpfc_queue {int EQ_processed; } ;
struct lpfc_iocbq {int iocb_flag; int fcp_wqidx; } ;
struct TYPE_4__ {struct lpfc_sli_ring* ring; } ;
struct TYPE_3__ {struct lpfc_queue** hba_eq; struct lpfc_fcp_eq_hdl* fcp_eq_hdl; int fcp_wq; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; TYPE_2__ sli; TYPE_1__ sli4_hba; } ;
struct lpfc_fcp_eq_hdl {int fcp_eq_in_use; } ;
struct lpfc_eqe {int dummy; } ;


 int IOCB_ERROR ;
 int LPFC_IO_FCP ;
 int LPFC_QUEUE_REARM ;
 scalar_t__ LPFC_SLI_REV4 ;
 size_t MAX_SLI3_CONFIGURED_RINGS ;
 int __lpfc_sli_issue_iocb (struct lpfc_hba*,size_t,struct lpfc_iocbq*,size_t) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ lpfc_fcp_look_ahead ;
 int lpfc_sli4_eq_clr_intr (struct lpfc_queue*) ;
 struct lpfc_eqe* lpfc_sli4_eq_get (struct lpfc_queue*) ;
 int lpfc_sli4_eq_release (struct lpfc_queue*,int ) ;
 int lpfc_sli4_hba_handle_eqe (struct lpfc_hba*,struct lpfc_eqe*,int) ;
 int lpfc_sli4_scmd_to_wqidx_distr (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int
lpfc_sli_issue_iocb(struct lpfc_hba *phba, uint32_t ring_number,
      struct lpfc_iocbq *piocb, uint32_t flag)
{
 struct lpfc_fcp_eq_hdl *fcp_eq_hdl;
 struct lpfc_sli_ring *pring;
 struct lpfc_queue *fpeq;
 struct lpfc_eqe *eqe;
 unsigned long iflags;
 int rc, idx;

 if (phba->sli_rev == LPFC_SLI_REV4) {
  if (piocb->iocb_flag & LPFC_IO_FCP) {
   if (unlikely(!phba->sli4_hba.fcp_wq))
    return IOCB_ERROR;
   idx = lpfc_sli4_scmd_to_wqidx_distr(phba);
   piocb->fcp_wqidx = idx;
   ring_number = MAX_SLI3_CONFIGURED_RINGS + idx;

   pring = &phba->sli.ring[ring_number];
   spin_lock_irqsave(&pring->ring_lock, iflags);
   rc = __lpfc_sli_issue_iocb(phba, ring_number, piocb,
    flag);
   spin_unlock_irqrestore(&pring->ring_lock, iflags);

   if (lpfc_fcp_look_ahead) {
    fcp_eq_hdl = &phba->sli4_hba.fcp_eq_hdl[idx];

    if (atomic_dec_and_test(&fcp_eq_hdl->
     fcp_eq_in_use)) {


     fpeq = phba->sli4_hba.hba_eq[idx];


     lpfc_sli4_eq_clr_intr(fpeq);




     while ((eqe = lpfc_sli4_eq_get(fpeq))) {
      lpfc_sli4_hba_handle_eqe(phba,
       eqe, idx);
      fpeq->EQ_processed++;
     }


     lpfc_sli4_eq_release(fpeq,
      LPFC_QUEUE_REARM);
    }
    atomic_inc(&fcp_eq_hdl->fcp_eq_in_use);
   }
  } else {
   pring = &phba->sli.ring[ring_number];
   spin_lock_irqsave(&pring->ring_lock, iflags);
   rc = __lpfc_sli_issue_iocb(phba, ring_number, piocb,
    flag);
   spin_unlock_irqrestore(&pring->ring_lock, iflags);

  }
 } else {

  spin_lock_irqsave(&phba->hbalock, iflags);
  rc = __lpfc_sli_issue_iocb(phba, ring_number, piocb, flag);
  spin_unlock_irqrestore(&phba->hbalock, iflags);
 }
 return rc;
}
