
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {int port_state; } ;
struct lpfc_hba {int mbox_mem_pool; TYPE_1__* pport; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_9__ {scalar_t__ mbxStatus; } ;
struct TYPE_8__ {TYPE_3__ mb; } ;
struct TYPE_10__ {TYPE_2__ u; struct lpfc_vport* vport; } ;
struct TYPE_7__ {int fc_flag; } ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int FC_VFI_REGISTERED ;
 int KERN_ERR ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,scalar_t__,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mempool_free (TYPE_4__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_unregister_vfi_cmpl(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct lpfc_vport *vport = mboxq->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (mboxq->u.mb.mbxStatus) {
  lpfc_printf_log(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
   "2555 UNREG_VFI mbxStatus error x%x "
   "HBA state x%x\n",
   mboxq->u.mb.mbxStatus, vport->port_state);
 }
 spin_lock_irq(shost->host_lock);
 phba->pport->fc_flag &= ~FC_VFI_REGISTERED;
 spin_unlock_irq(shost->host_lock);
 mempool_free(mboxq, phba->mbox_mem_pool);
 return;
}
