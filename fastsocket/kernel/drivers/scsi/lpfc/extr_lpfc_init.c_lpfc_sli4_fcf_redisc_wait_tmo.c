
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int hbalock; TYPE_1__ fcf; } ;


 int FCF_REDISC_EVT ;
 int FCF_REDISC_PEND ;
 int KERN_INFO ;
 int LOG_FIP ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_sli4_fcf_redisc_wait_tmo(unsigned long ptr)
{
 struct lpfc_hba *phba = (struct lpfc_hba *)ptr;


 spin_lock_irq(&phba->hbalock);
 if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND)) {
  spin_unlock_irq(&phba->hbalock);
  return;
 }

 phba->fcf.fcf_flag &= ~FCF_REDISC_PEND;

 phba->fcf.fcf_flag |= FCF_REDISC_EVT;
 spin_unlock_irq(&phba->hbalock);
 lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
   "2776 FCF rediscover quiescent timer expired\n");

 lpfc_worker_wake_up(phba);
}
