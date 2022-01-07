
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; int fabric_block_timer; int bit_flags; int link_state; } ;


 int FABRIC_COMANDS_BLOCKED ;
 int LPFC_LINK_UP ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int lpfc_cleanup_wt_rrqs (struct lpfc_hba*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_linkup_port (struct lpfc_vport*) ;

__attribute__((used)) static int
lpfc_linkup(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 int i;

 lpfc_cleanup_wt_rrqs(phba);
 phba->link_state = LPFC_LINK_UP;


 clear_bit(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);
 del_timer_sync(&phba->fabric_block_timer);

 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++)
   lpfc_linkup_port(vports[i]);
 lpfc_destroy_vport_work_array(phba, vports);

 return 0;
}
