
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int sli_flag; scalar_t__ mbox_active; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;


 int LPFC_SLI_ASYNC_MBX_BLK ;
 unsigned long jiffies ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,scalar_t__) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
lpfc_sli4_async_mbox_block(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;
 int rc = 0;
 unsigned long timeout = 0;


 spin_lock_irq(&phba->hbalock);
 psli->sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;



 if (phba->sli.mbox_active)
  timeout = msecs_to_jiffies(lpfc_mbox_tmo_val(phba,
      phba->sli.mbox_active) *
      1000) + jiffies;
 spin_unlock_irq(&phba->hbalock);


 while (phba->sli.mbox_active) {

  msleep(2);
  if (time_after(jiffies, timeout)) {

   rc = 1;
   break;
  }
 }


 if (rc) {
  spin_lock_irq(&phba->hbalock);
  psli->sli_flag &= ~LPFC_SLI_ASYNC_MBX_BLK;
  spin_unlock_irq(&phba->hbalock);
 }
 return rc;
}
