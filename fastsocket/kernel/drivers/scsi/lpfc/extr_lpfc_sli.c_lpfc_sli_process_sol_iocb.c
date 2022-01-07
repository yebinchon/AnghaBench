
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_sli_ring {scalar_t__ ringno; } ;
struct TYPE_3__ {void** ulpWord; } ;
struct TYPE_4__ {scalar_t__ ulpCommand; int ulpContext; TYPE_1__ un; void* ulpStatus; int ulpIoTag; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_2__ iocb; int (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;} ;
struct lpfc_hba {scalar_t__ sli_rev; int hbalock; } ;


 scalar_t__ CMD_ELS_REQUEST64_CR ;
 void* IOERR_ABORT_REQUESTED ;
 void* IOERR_SLI_ABORTED ;
 void* IOSTAT_LOCAL_REJECT ;
 int KERN_WARNING ;
 int LOG_SLI ;
 int LPFC_DELAY_MEM_FREE ;
 int LPFC_DRIVER_ABORTED ;
 scalar_t__ LPFC_ELS_RING ;
 int LPFC_EXCHANGE_BUSY ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,int ,void*,void*,scalar_t__,int ) ;
 int lpfc_send_els_failure_event (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_sli_iocbq_lookup (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;

__attribute__((used)) static int
lpfc_sli_process_sol_iocb(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
     struct lpfc_iocbq *saveq)
{
 struct lpfc_iocbq *cmdiocbp;
 int rc = 1;
 unsigned long iflag;


 spin_lock_irqsave(&phba->hbalock, iflag);
 cmdiocbp = lpfc_sli_iocbq_lookup(phba, pring, saveq);
 spin_unlock_irqrestore(&phba->hbalock, iflag);

 if (cmdiocbp) {
  if (cmdiocbp->iocb_cmpl) {




   if (saveq->iocb.ulpStatus &&
        (pring->ringno == LPFC_ELS_RING) &&
        (cmdiocbp->iocb.ulpCommand ==
    CMD_ELS_REQUEST64_CR))
    lpfc_send_els_failure_event(phba,
     cmdiocbp, saveq);





   if (pring->ringno == LPFC_ELS_RING) {
    if ((phba->sli_rev < LPFC_SLI_REV4) &&
        (cmdiocbp->iocb_flag &
       LPFC_DRIVER_ABORTED)) {
     spin_lock_irqsave(&phba->hbalock,
         iflag);
     cmdiocbp->iocb_flag &=
      ~LPFC_DRIVER_ABORTED;
     spin_unlock_irqrestore(&phba->hbalock,
              iflag);
     saveq->iocb.ulpStatus =
      IOSTAT_LOCAL_REJECT;
     saveq->iocb.un.ulpWord[4] =
      IOERR_SLI_ABORTED;





     spin_lock_irqsave(&phba->hbalock,
         iflag);
     saveq->iocb_flag |= LPFC_DELAY_MEM_FREE;
     spin_unlock_irqrestore(&phba->hbalock,
              iflag);
    }
    if (phba->sli_rev == LPFC_SLI_REV4) {
     if (saveq->iocb_flag &
         LPFC_EXCHANGE_BUSY) {






      spin_lock_irqsave(
       &phba->hbalock, iflag);
      cmdiocbp->iocb_flag |=
       LPFC_EXCHANGE_BUSY;
      spin_unlock_irqrestore(
       &phba->hbalock, iflag);
     }
     if (cmdiocbp->iocb_flag &
         LPFC_DRIVER_ABORTED) {





      spin_lock_irqsave(
       &phba->hbalock, iflag);
      cmdiocbp->iocb_flag &=
       ~LPFC_DRIVER_ABORTED;
      spin_unlock_irqrestore(
       &phba->hbalock, iflag);
      cmdiocbp->iocb.ulpStatus =
       IOSTAT_LOCAL_REJECT;
      cmdiocbp->iocb.un.ulpWord[4] =
       IOERR_ABORT_REQUESTED;






      saveq->iocb.ulpStatus =
       IOSTAT_LOCAL_REJECT;
      saveq->iocb.un.ulpWord[4] =
       IOERR_SLI_ABORTED;
      spin_lock_irqsave(
       &phba->hbalock, iflag);
      saveq->iocb_flag |=
       LPFC_DELAY_MEM_FREE;
      spin_unlock_irqrestore(
       &phba->hbalock, iflag);
     }
    }
   }
   (cmdiocbp->iocb_cmpl) (phba, cmdiocbp, saveq);
  } else
   lpfc_sli_release_iocbq(phba, cmdiocbp);
 } else {





  if (pring->ringno != LPFC_ELS_RING) {




   lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
      "0322 Ring %d handler: "
      "unexpected completion IoTag x%x "
      "Data: x%x x%x x%x x%x\n",
      pring->ringno,
      saveq->iocb.ulpIoTag,
      saveq->iocb.ulpStatus,
      saveq->iocb.un.ulpWord[4],
      saveq->iocb.ulpCommand,
      saveq->iocb.ulpContext);
  }
 }

 return rc;
}
