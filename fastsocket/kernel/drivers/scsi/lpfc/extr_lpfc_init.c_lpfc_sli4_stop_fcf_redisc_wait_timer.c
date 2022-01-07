
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcf_flag; } ;
struct lpfc_hba {int hbalock; TYPE_1__ fcf; } ;


 int FCF_ACVL_DISC ;
 int FCF_DEAD_DISC ;
 int FCF_REDISC_PEND ;
 int __lpfc_sli4_stop_fcf_redisc_wait_timer (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_sli4_stop_fcf_redisc_wait_timer(struct lpfc_hba *phba)
{
 spin_lock_irq(&phba->hbalock);
 if (!(phba->fcf.fcf_flag & FCF_REDISC_PEND)) {

  spin_unlock_irq(&phba->hbalock);
  return;
 }
 __lpfc_sli4_stop_fcf_redisc_wait_timer(phba);

 phba->fcf.fcf_flag &= ~(FCF_DEAD_DISC | FCF_ACVL_DISC);
 spin_unlock_irq(&phba->hbalock);
}
