
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_2__ {int work_port_events; int work_port_lock; } ;


 int WORKER_MBOX_TMO ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
lpfc_mbox_timeout(unsigned long ptr)
{
 struct lpfc_hba *phba = (struct lpfc_hba *) ptr;
 unsigned long iflag;
 uint32_t tmo_posted;

 spin_lock_irqsave(&phba->pport->work_port_lock, iflag);
 tmo_posted = phba->pport->work_port_events & WORKER_MBOX_TMO;
 if (!tmo_posted)
  phba->pport->work_port_events |= WORKER_MBOX_TMO;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflag);

 if (!tmo_posted)
  lpfc_worker_wake_up(phba);
 return;
}
