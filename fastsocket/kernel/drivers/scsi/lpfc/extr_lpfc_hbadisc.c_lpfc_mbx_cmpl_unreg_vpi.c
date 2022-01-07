
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lpfc_vport {int load_flag; int unreg_vpi_cmpl; int fc_flag; int vpi_state; int vpi; } ;
struct lpfc_hba {struct lpfc_vport* pport; int mbox_mem_pool; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_7__ {int mbxStatus; } ;
struct TYPE_6__ {TYPE_2__ mb; } ;
struct TYPE_8__ {struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef TYPE_2__ MAILBOX_t ;
typedef TYPE_3__ LPFC_MBOXQ_t ;


 int FC_UNLOADING ;
 int FC_VPORT_NEEDS_REG_VPI ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_NODE ;
 int LPFC_EVT_RESET_HBA ;
 int LPFC_VPI_REGISTERED ;
 int VPORT_OK ;
 int lpfc_cleanup_vports_rrqs (struct lpfc_vport*,int *) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_workq_post_event (struct lpfc_hba*,int *,int *,int ) ;
 int mempool_free (TYPE_3__*,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void
lpfc_mbx_cmpl_unreg_vpi(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_vport *vport = pmb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 switch (mb->mbxStatus) {
 case 0x0011:
 case 0x0020:
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE,
     "0911 cmpl_unreg_vpi, mb status = 0x%x\n",
     mb->mbxStatus);
  break;

 case 0x9700:
  lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE,
   "2798 Unreg_vpi failed vpi 0x%x, mb status = 0x%x\n",
   vport->vpi, mb->mbxStatus);
  if (!(phba->pport->load_flag & FC_UNLOADING))
   lpfc_workq_post_event(phba, ((void*)0), ((void*)0),
    LPFC_EVT_RESET_HBA);
 }
 spin_lock_irq(shost->host_lock);
 vport->vpi_state &= ~LPFC_VPI_REGISTERED;
 vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
 spin_unlock_irq(shost->host_lock);
 vport->unreg_vpi_cmpl = VPORT_OK;
 mempool_free(pmb, phba->mbox_mem_pool);
 lpfc_cleanup_vports_rrqs(vport, ((void*)0));




 if ((vport->load_flag & FC_UNLOADING) && (vport != phba->pport))
  scsi_host_put(shost);
}
