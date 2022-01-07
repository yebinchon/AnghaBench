
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int link_state; int cfg_enable_hba_reset; } ;


 int LPFC_HBA_ERROR ;
 int LPFC_MBX_WAIT ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;

void
lpfc_reset_hba(struct lpfc_hba *phba)
{

 if (!phba->cfg_enable_hba_reset) {
  phba->link_state = LPFC_HBA_ERROR;
  return;
 }
 lpfc_offline_prep(phba, LPFC_MBX_WAIT);
 lpfc_offline(phba);
 lpfc_sli_brdrestart(phba);
 lpfc_online(phba);
 lpfc_unblock_mgmt_io(phba);
}
