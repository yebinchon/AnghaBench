
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vpi_used; } ;
struct TYPE_4__ {int sli4_flags; int vfi_ids; int vfi_bmask; int xri_ids; int xri_bmask; TYPE_1__ max_cfg_param; scalar_t__ extents_in_use; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; int vpi_ids; int vpi_bmask; } ;


 int LPFC_RSC_TYPE_FCOE_RPI ;
 int LPFC_RSC_TYPE_FCOE_VFI ;
 int LPFC_RSC_TYPE_FCOE_VPI ;
 int LPFC_RSC_TYPE_FCOE_XRI ;
 int bf_set (int ,int *,int ) ;
 int kfree (int ) ;
 int lpfc_idx_rsrc_rdy ;
 int lpfc_sli4_dealloc_extent (struct lpfc_hba*,int ) ;
 int lpfc_vfi_rsrc_rdy ;
 int lpfc_vpi_rsrc_rdy ;

int
lpfc_sli4_dealloc_resource_identifiers(struct lpfc_hba *phba)
{
 if (phba->sli4_hba.extents_in_use) {
  lpfc_sli4_dealloc_extent(phba, LPFC_RSC_TYPE_FCOE_VPI);
  lpfc_sli4_dealloc_extent(phba, LPFC_RSC_TYPE_FCOE_RPI);
  lpfc_sli4_dealloc_extent(phba, LPFC_RSC_TYPE_FCOE_XRI);
  lpfc_sli4_dealloc_extent(phba, LPFC_RSC_TYPE_FCOE_VFI);
 } else {
  kfree(phba->vpi_bmask);
  phba->sli4_hba.max_cfg_param.vpi_used = 0;
  kfree(phba->vpi_ids);
  bf_set(lpfc_vpi_rsrc_rdy, &phba->sli4_hba.sli4_flags, 0);
  kfree(phba->sli4_hba.xri_bmask);
  kfree(phba->sli4_hba.xri_ids);
  kfree(phba->sli4_hba.vfi_bmask);
  kfree(phba->sli4_hba.vfi_ids);
  bf_set(lpfc_vfi_rsrc_rdy, &phba->sli4_hba.sli4_flags, 0);
  bf_set(lpfc_idx_rsrc_rdy, &phba->sli4_hba.sli4_flags, 0);
 }

 return 0;
}
