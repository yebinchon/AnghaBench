
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fcf_flag; } ;
struct lpfc_hba {int hba_flag; int hbalock; TYPE_1__* pport; TYPE_2__ fcf; } ;
struct TYPE_3__ {scalar_t__ port_state; } ;


 int FCF_DISCOVERY ;
 int FCF_REGISTERED ;
 int HBA_FCOE_MODE ;
 int HBA_FIP_SUPPORT ;
 scalar_t__ LPFC_FLOGI ;
 scalar_t__ lpfc_fcf_inuse (struct lpfc_hba*) ;
 int lpfc_unregister_fcf_rescan (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_unregister_unused_fcf(struct lpfc_hba *phba)
{





 spin_lock_irq(&phba->hbalock);
 if (!(phba->hba_flag & HBA_FCOE_MODE) ||
     !(phba->fcf.fcf_flag & FCF_REGISTERED) ||
     !(phba->hba_flag & HBA_FIP_SUPPORT) ||
     (phba->fcf.fcf_flag & FCF_DISCOVERY) ||
     (phba->pport->port_state == LPFC_FLOGI)) {
  spin_unlock_irq(&phba->hbalock);
  return;
 }
 spin_unlock_irq(&phba->hbalock);

 if (lpfc_fcf_inuse(phba))
  return;

 lpfc_unregister_fcf_rescan(phba);
}
