
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {scalar_t__ port_type; int fc_flag; int port_state; } ;
struct lpfc_sli {size_t extra_ring; size_t fcp_ring; size_t next_ring; int sli_flag; TYPE_2__* ring; } ;
struct lpfc_hba {int hbalock; int HCregaddr; int mbox_mem_pool; int link_state; struct lpfc_sli sli; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_9__ {int mbxStatus; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {TYPE_1__ u; struct lpfc_vport* vport; } ;
struct TYPE_8__ {int flag; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int FC_ABORT_DISCOVERY ;
 int HC_LAINT_ENA ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int LOG_MBOX ;
 int LPFC_HBA_ERROR ;
 int LPFC_HBA_READY ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int LPFC_PROCESS_LA ;
 int LPFC_STOP_IOCB_EVENT ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int mempool_free (TYPE_4__*,int ) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
lpfc_mbx_cmpl_clear_la(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 struct lpfc_vport *vport = pmb->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_sli *psli = &phba->sli;
 MAILBOX_t *mb = &pmb->u.mb;
 uint32_t control;


 psli->ring[psli->extra_ring].flag &= ~LPFC_STOP_IOCB_EVENT;
 psli->ring[psli->fcp_ring].flag &= ~LPFC_STOP_IOCB_EVENT;
 psli->ring[psli->next_ring].flag &= ~LPFC_STOP_IOCB_EVENT;


 if ((mb->mbxStatus) && (mb->mbxStatus != 0x1601)) {

  lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
     "0320 CLEAR_LA mbxStatus error x%x hba "
     "state x%x\n",
     mb->mbxStatus, vport->port_state);
  phba->link_state = LPFC_HBA_ERROR;
  goto out;
 }

 if (vport->port_type == LPFC_PHYSICAL_PORT)
  phba->link_state = LPFC_HBA_READY;

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag |= LPFC_PROCESS_LA;
 control = readl(phba->HCregaddr);
 control |= HC_LAINT_ENA;
 writel(control, phba->HCregaddr);
 readl(phba->HCregaddr);
 spin_unlock_irq(&phba->hbalock);
 mempool_free(pmb, phba->mbox_mem_pool);
 return;

out:

 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0225 Device Discovery completes\n");
 mempool_free(pmb, phba->mbox_mem_pool);

 spin_lock_irq(shost->host_lock);
 vport->fc_flag &= ~FC_ABORT_DISCOVERY;
 spin_unlock_irq(shost->host_lock);

 lpfc_can_disctmo(vport);



 spin_lock_irq(&phba->hbalock);
 psli->sli_flag |= LPFC_PROCESS_LA;
 control = readl(phba->HCregaddr);
 control |= HC_LAINT_ENA;
 writel(control, phba->HCregaddr);
 readl(phba->HCregaddr);
 spin_unlock_irq(&phba->hbalock);

 return;
}
