
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fcfi; } ;
struct lpfc_hba {TYPE_2__* pport; TYPE_1__ fcf; int mbox_mem_pool; } ;
struct TYPE_9__ {int mbox_cmpl; TYPE_2__* vport; } ;
struct TYPE_8__ {int port_state; } ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int,...) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_3__*,int ) ;
 int lpfc_unreg_fcfi (TYPE_3__*,int ) ;
 int lpfc_unregister_fcfi_cmpl ;
 TYPE_3__* mempool_alloc (int ,int ) ;

int
lpfc_sli4_unregister_fcf(struct lpfc_hba *phba)
{
 LPFC_MBOXQ_t *mbox;
 int rc;

 mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mbox) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
    "2551 UNREG_FCFI mbox allocation failed"
    "HBA state x%x\n", phba->pport->port_state);
  return -ENOMEM;
 }
 lpfc_unreg_fcfi(mbox, phba->fcf.fcfi);
 mbox->vport = phba->pport;
 mbox->mbox_cmpl = lpfc_unregister_fcfi_cmpl;
 rc = lpfc_sli_issue_mbox(phba, mbox, MBX_NOWAIT);

 if (rc == MBX_NOT_FINISHED) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2552 Unregister FCFI command failed rc x%x "
    "HBA state x%x\n",
    rc, phba->pport->port_state);
  return -EINVAL;
 }
 return 0;
}
