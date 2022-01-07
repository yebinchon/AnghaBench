
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int load_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int max_vports; struct lpfc_vport* pport; int HCregaddr; } ;


 int FC_UNLOADING ;
 scalar_t__ LPFC_SLI_REV3 ;
 int lpfc_cleanup_discovery_resources (struct lpfc_vport*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int readl (int ) ;
 int writel (int ,int ) ;

int
lpfc_hba_down_prep(struct lpfc_hba *phba)
{
 struct lpfc_vport **vports;
 int i;

 if (phba->sli_rev <= LPFC_SLI_REV3) {

  writel(0, phba->HCregaddr);
  readl(phba->HCregaddr);
 }

 if (phba->pport->load_flag & FC_UNLOADING)
  lpfc_cleanup_discovery_resources(phba->pport);
 else {
  vports = lpfc_create_vport_work_array(phba);
  if (vports != ((void*)0))
   for (i = 0; i <= phba->max_vports &&
    vports[i] != ((void*)0); i++)
    lpfc_cleanup_discovery_resources(vports[i]);
  lpfc_destroy_vport_work_array(phba, vports);
 }
 return 0;
}
