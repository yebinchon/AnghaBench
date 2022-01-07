
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lpfc_sli_ring {int dummy; } ;
struct lpfc_sli {size_t fcp_ring; struct lpfc_sli_ring* ring; int sli_flag; TYPE_4__* mbox_active; } ;
struct lpfc_hba {int hbalock; int link_state; TYPE_2__* pport; struct lpfc_sli sli; } ;
struct TYPE_7__ {int mbxCommand; } ;
struct TYPE_5__ {TYPE_3__ mb; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_6__ {int work_port_lock; int work_port_events; int port_state; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_LINK_UNKNOWN ;
 int LPFC_SLI_ACTIVE ;
 int WORKER_MBOX_TMO ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_reset_hba (struct lpfc_hba*) ;
 int lpfc_sli_abort_iocb_ring (struct lpfc_hba*,struct lpfc_sli_ring*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_mbox_timeout_handler(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *pmbox = phba->sli.mbox_active;
 MAILBOX_t *mb = &pmbox->u.mb;
 struct lpfc_sli *psli = &phba->sli;
 struct lpfc_sli_ring *pring;






 spin_lock_irq(&phba->hbalock);
 if (pmbox == ((void*)0)) {
  lpfc_printf_log(phba, KERN_WARNING,
    LOG_MBOX | LOG_SLI,
    "0353 Active Mailbox cleared - mailbox timeout "
    "exiting\n");
  spin_unlock_irq(&phba->hbalock);
  return;
 }


 lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
   "0310 Mailbox command x%x timeout Data: x%x x%x x%p\n",
   mb->mbxCommand,
   phba->pport->port_state,
   phba->sli.sli_flag,
   phba->sli.mbox_active);
 spin_unlock_irq(&phba->hbalock);





 spin_lock_irq(&phba->pport->work_port_lock);
 phba->pport->work_port_events &= ~WORKER_MBOX_TMO;
 spin_unlock_irq(&phba->pport->work_port_lock);
 spin_lock_irq(&phba->hbalock);
 phba->link_state = LPFC_LINK_UNKNOWN;
 psli->sli_flag &= ~LPFC_SLI_ACTIVE;
 spin_unlock_irq(&phba->hbalock);

 pring = &psli->ring[psli->fcp_ring];
 lpfc_sli_abort_iocb_ring(phba, pring);

 lpfc_printf_log(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
   "0345 Resetting board due to mailbox timeout\n");


 lpfc_reset_hba(phba);
}
