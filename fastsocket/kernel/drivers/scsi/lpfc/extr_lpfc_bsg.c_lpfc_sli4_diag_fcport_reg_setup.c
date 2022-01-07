
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * vfi_ids; } ;
struct TYPE_4__ {int fcfi; } ;
struct lpfc_hba {TYPE_3__* pport; int * vpi_ids; TYPE_2__ sli4_hba; TYPE_1__ fcf; } ;
struct TYPE_6__ {int fc_flag; size_t vfi; size_t vpi; int fc_myDID; } ;


 int EINVAL ;
 int FC_VFI_REGISTERED ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int lpfc_issue_reg_vfi (TYPE_3__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
lpfc_sli4_diag_fcport_reg_setup(struct lpfc_hba *phba)
{
 int rc;

 if (phba->pport->fc_flag & FC_VFI_REGISTERED) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "3136 Port still had vfi registered: "
    "mydid:x%x, fcfi:%d, vfi:%d, vpi:%d\n",
    phba->pport->fc_myDID, phba->fcf.fcfi,
    phba->sli4_hba.vfi_ids[phba->pport->vfi],
    phba->vpi_ids[phba->pport->vpi]);
  return -EINVAL;
 }
 rc = lpfc_issue_reg_vfi(phba->pport);
 return rc;
}
