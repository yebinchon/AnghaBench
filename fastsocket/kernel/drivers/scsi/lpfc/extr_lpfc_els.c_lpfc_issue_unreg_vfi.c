
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_1__* pport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {int mbox_cmpl; struct lpfc_vport* vport; } ;
struct TYPE_7__ {int port_state; } ;
typedef TYPE_2__ LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int FC_VFI_REGISTERED ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_2__*,int ) ;
 int lpfc_unreg_vfi (TYPE_2__*,struct lpfc_vport*) ;
 int lpfc_unregister_vfi_cmpl ;
 TYPE_2__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_2__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
lpfc_issue_unreg_vfi(struct lpfc_vport *vport)
{
 struct lpfc_hba *phba = vport->phba;
 struct Scsi_Host *shost;
 LPFC_MBOXQ_t *mboxq;
 int rc;

 mboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!mboxq) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
    "2556 UNREG_VFI mbox allocation failed"
    "HBA state x%x\n", phba->pport->port_state);
  return -ENOMEM;
 }

 lpfc_unreg_vfi(mboxq, vport);
 mboxq->vport = vport;
 mboxq->mbox_cmpl = lpfc_unregister_vfi_cmpl;

 rc = lpfc_sli_issue_mbox(phba, mboxq, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
    "2557 UNREG_VFI issue mbox failed rc x%x "
    "HBA state x%x\n",
    rc, phba->pport->port_state);
  mempool_free(mboxq, phba->mbox_mem_pool);
  return -EIO;
 }

 shost = lpfc_shost_from_vport(vport);
 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~FC_VFI_REGISTERED;
 spin_unlock_irq(shost->host_lock);
 return 0;
}
