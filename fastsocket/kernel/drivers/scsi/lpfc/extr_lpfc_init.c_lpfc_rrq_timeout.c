
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {TYPE_1__* pport; int hba_flag; } ;
struct TYPE_2__ {int work_port_lock; } ;


 int HBA_RRQ_ACTIVE ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_rrq_timeout(unsigned long ptr)
{
 struct lpfc_hba *phba;
 unsigned long iflag;

 phba = (struct lpfc_hba *)ptr;
 spin_lock_irqsave(&phba->pport->work_port_lock, iflag);
 phba->hba_flag |= HBA_RRQ_ACTIVE;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, iflag);
 lpfc_worker_wake_up(phba);
}
