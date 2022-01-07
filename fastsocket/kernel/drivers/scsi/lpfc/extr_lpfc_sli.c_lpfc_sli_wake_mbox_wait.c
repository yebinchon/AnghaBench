
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct lpfc_hba {int hbalock; } ;
struct TYPE_3__ {scalar_t__ context1; int mbox_flag; } ;
typedef TYPE_1__ LPFC_MBOXQ_t ;


 int LPFC_MBX_WAKE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

void
lpfc_sli_wake_mbox_wait(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq)
{
 wait_queue_head_t *pdone_q;
 unsigned long drvr_flag;





 pmboxq->mbox_flag |= LPFC_MBX_WAKE;
 spin_lock_irqsave(&phba->hbalock, drvr_flag);
 pdone_q = (wait_queue_head_t *) pmboxq->context1;
 if (pdone_q)
  wake_up_interruptible(pdone_q);
 spin_unlock_irqrestore(&phba->hbalock, drvr_flag);
 return;
}
