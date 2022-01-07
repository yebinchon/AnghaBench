
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_hba {int hbalock; } ;
struct TYPE_5__ {int mbox_flag; int * context1; int mbox_cmpl; } ;
typedef int MAILBOX_t ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int LPFC_MBX_WAKE ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 int done_q ;
 int lpfc_sli4_swap_str (struct lpfc_hba*,TYPE_1__*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_1__*,int ) ;
 int lpfc_sli_wake_mbox_wait ;
 int msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int
lpfc_sli_issue_mbox_wait(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq,
    uint32_t timeout)
{
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(done_q);
 MAILBOX_t *mb = ((void*)0);
 int retval;
 unsigned long flag;


 if (pmboxq->context1)
  mb = (MAILBOX_t *)pmboxq->context1;

 pmboxq->mbox_flag &= ~LPFC_MBX_WAKE;

 pmboxq->mbox_cmpl = lpfc_sli_wake_mbox_wait;

 pmboxq->context1 = &done_q;


 retval = lpfc_sli_issue_mbox(phba, pmboxq, MBX_NOWAIT);
 if (retval == MBX_BUSY || retval == MBX_SUCCESS) {
  wait_event_interruptible_timeout(done_q,
    pmboxq->mbox_flag & LPFC_MBX_WAKE,
    msecs_to_jiffies(timeout * 1000));

  spin_lock_irqsave(&phba->hbalock, flag);

  pmboxq->context1 = (uint8_t *)mb;




  if (pmboxq->mbox_flag & LPFC_MBX_WAKE) {
   retval = MBX_SUCCESS;
   lpfc_sli4_swap_str(phba, pmboxq);
  } else {
   retval = MBX_TIMEOUT;
   pmboxq->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
  }
  spin_unlock_irqrestore(&phba->hbalock, flag);
 } else {

  pmboxq->context1 = (uint8_t *)mb;
 }

 return retval;
}
