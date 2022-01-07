
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {int link_state; int hbalock; struct lpfc_sli sli; } ;


 int HS_MBRDY ;
 int LPFC_HBA_ERROR ;
 int LPFC_MBX_NO_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int lpfc_hba_down_post (struct lpfc_hba*) ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_reset_barrier (struct lpfc_hba*) ;
 int lpfc_sli_brdready (struct lpfc_hba*,int ) ;
 int lpfc_sli_brdreset (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_offline_eratt(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag &= ~LPFC_SLI_ACTIVE;
 spin_unlock_irq(&phba->hbalock);
 lpfc_offline_prep(phba, LPFC_MBX_NO_WAIT);

 lpfc_offline(phba);
 lpfc_reset_barrier(phba);
 spin_lock_irq(&phba->hbalock);
 lpfc_sli_brdreset(phba);
 spin_unlock_irq(&phba->hbalock);
 lpfc_hba_down_post(phba);
 lpfc_sli_brdready(phba, HS_MBRDY);
 lpfc_unblock_mgmt_io(phba);
 phba->link_state = LPFC_HBA_ERROR;
 return;
}
