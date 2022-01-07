
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_work_evt {int evt_listp; int evt; scalar_t__ evt_arg1; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {struct lpfc_work_evt els_retry_evt; struct lpfc_vport* vport; } ;
struct lpfc_hba {int hbalock; int work_list; } ;


 int LPFC_EVT_ELS_RETRY ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 scalar_t__ lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_els_retry_delay(unsigned long ptr)
{
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) ptr;
 struct lpfc_vport *vport = ndlp->vport;
 struct lpfc_hba *phba = vport->phba;
 unsigned long flags;
 struct lpfc_work_evt *evtp = &ndlp->els_retry_evt;

 spin_lock_irqsave(&phba->hbalock, flags);
 if (!list_empty(&evtp->evt_listp)) {
  spin_unlock_irqrestore(&phba->hbalock, flags);
  return;
 }




 evtp->evt_arg1 = lpfc_nlp_get(ndlp);
 if (evtp->evt_arg1) {
  evtp->evt = LPFC_EVT_ELS_RETRY;
  list_add_tail(&evtp->evt_listp, &phba->work_list);
  lpfc_worker_wake_up(phba);
 }
 spin_unlock_irqrestore(&phba->hbalock, flags);
 return;
}
