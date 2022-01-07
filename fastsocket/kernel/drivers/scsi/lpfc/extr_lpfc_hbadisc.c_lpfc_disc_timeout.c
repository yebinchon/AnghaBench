
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int work_port_events; int work_port_lock; struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;


 int WORKER_DISC_TMO ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

void
lpfc_disc_timeout(unsigned long ptr)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) ptr;
 struct lpfc_hba *phba = vport->phba;
 uint32_t tmo_posted;
 unsigned long flags = 0;

 if (unlikely(!phba))
  return;

 spin_lock_irqsave(&vport->work_port_lock, flags);
 tmo_posted = vport->work_port_events & WORKER_DISC_TMO;
 if (!tmo_posted)
  vport->work_port_events |= WORKER_DISC_TMO;
 spin_unlock_irqrestore(&vport->work_port_lock, flags);

 if (!tmo_posted)
  lpfc_worker_wake_up(phba);
 return;
}
