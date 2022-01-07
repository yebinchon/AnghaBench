
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_work_evt {int evt_listp; int evt; void* evt_arg2; void* evt_arg1; } ;
struct lpfc_hba {int hbalock; int work_list; } ;


 int GFP_ATOMIC ;
 struct lpfc_work_evt* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
lpfc_workq_post_event(struct lpfc_hba *phba, void *arg1, void *arg2,
        uint32_t evt)
{
 struct lpfc_work_evt *evtp;
 unsigned long flags;





 evtp = kmalloc(sizeof(struct lpfc_work_evt), GFP_ATOMIC);
 if (!evtp)
  return 0;

 evtp->evt_arg1 = arg1;
 evtp->evt_arg2 = arg2;
 evtp->evt = evt;

 spin_lock_irqsave(&phba->hbalock, flags);
 list_add_tail(&evtp->evt_listp, &phba->work_list);
 spin_unlock_irqrestore(&phba->hbalock, flags);

 lpfc_worker_wake_up(phba);

 return 1;
}
