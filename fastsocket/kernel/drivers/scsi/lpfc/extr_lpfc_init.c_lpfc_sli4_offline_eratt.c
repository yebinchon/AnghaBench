
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int link_state; } ;


 int LPFC_HBA_ERROR ;
 int LPFC_MBX_NO_WAIT ;
 int lpfc_hba_down_post (struct lpfc_hba*) ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_sli4_brdreset (struct lpfc_hba*) ;
 int lpfc_sli4_post_status_check (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;

void
lpfc_sli4_offline_eratt(struct lpfc_hba *phba)
{
 lpfc_offline_prep(phba, LPFC_MBX_NO_WAIT);
 lpfc_offline(phba);
 lpfc_sli4_brdreset(phba);
 lpfc_hba_down_post(phba);
 lpfc_sli4_post_status_check(phba);
 lpfc_unblock_mgmt_io(phba);
 phba->link_state = LPFC_HBA_ERROR;
}
