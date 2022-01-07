
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {TYPE_1__* pport; } ;
struct TYPE_2__ {int work_port_events; int work_port_lock; } ;


 int WORKER_HB_TMO ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_hb_timeout(unsigned long ptr)
{
 struct lpfc_hba *phba;
 uint32_t tmo_posted;
 unsigned long iflag;

 phba = (struct lpfc_hba *)ptr;


 spin_lock_irqsave(&phba->pport->work_port_lock, iflag);
 tmo_posted = phba->pport->work_port_events & WORKER_HB_TMO;
 if (!tmo_posted)
  phba->pport->work_port_events |= WORKER_HB_TMO;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflag);


 if (!tmo_posted)
  lpfc_worker_wake_up(phba);
 return;
}
