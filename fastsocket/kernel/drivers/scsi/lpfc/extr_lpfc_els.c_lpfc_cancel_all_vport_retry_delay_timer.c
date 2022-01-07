
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int max_vports; int link_state; } ;


 int Fabric_DID ;
 int lpfc_cancel_retry_delay_tmo (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_els_flush_cmd (struct lpfc_vport*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int lpfc_linkdown (struct lpfc_hba*) ;

void
lpfc_cancel_all_vport_retry_delay_timer(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 struct lpfc_nodelist *ndlp;
 uint32_t link_state;
 int i;


 link_state = phba->link_state;
 lpfc_linkdown(phba);
 phba->link_state = link_state;

 vports = lpfc_create_vport_work_array(phba);

 if (vports) {
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   ndlp = lpfc_findnode_did(vports[i], Fabric_DID);
   if (ndlp)
    lpfc_cancel_retry_delay_tmo(vports[i], ndlp);
   lpfc_els_flush_cmd(vports[i]);
  }
  lpfc_destroy_vport_work_array(phba, vports);
 }
}
