
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ipr_sata_port {struct ipr_ioa_cfg* ioa_cfg; struct ipr_resource_entry* res; } ;
struct ipr_resource_entry {int res_handle; } ;
struct ipr_ioarcb_ata_regs {int flags; } ;
struct TYPE_14__ {int cdb; int flags_hi; int request_type; } ;
struct TYPE_11__ {struct ipr_ioarcb_ata_regs regs; } ;
struct TYPE_12__ {TYPE_3__ u; } ;
struct TYPE_13__ {TYPE_4__ add_data; } ;
struct ipr_ioarcb {TYPE_6__ cmd_pkt; int res_handle; void* add_cmd_parms_len; TYPE_5__ u; void* add_cmd_parms_offset; } ;
struct ipr_ioa_cfg {scalar_t__ sis64; } ;
struct TYPE_9__ {struct ipr_ioarcb_ata_regs regs; } ;
struct TYPE_10__ {TYPE_1__ ata_ioadl; } ;
struct ipr_cmnd {TYPE_7__* hrrq; int dma_use_sg; struct ipr_ioarcb ioarcb; int done; struct ata_queued_cmd* qc; int queue; TYPE_2__ i; } ;
struct TYPE_16__ {int protocol; } ;
struct ata_queued_cmd {TYPE_8__ tf; int cdb; int n_elem; struct ipr_cmnd* lldd_task; struct ata_port* ap; } ;
struct ata_port {struct ipr_sata_port* private_data; } ;
struct TYPE_15__ {int _lock; int hrrq_pending_q; int hrrq_free_q; scalar_t__ ioa_is_dead; int allow_cmds; } ;


 unsigned int AC_ERR_INVALID ;
 unsigned int AC_ERR_SYSTEM ;






 int IPR_ATA_FLAG_PACKET_CMD ;
 int IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION ;
 int IPR_ATA_FLAG_XFER_TYPE_DMA ;
 int IPR_FLAGS_HI_NO_LINK_DESC ;
 int IPR_FLAGS_HI_NO_ULEN_CHK ;
 int IPR_GET_RES_PHYS_LOC (struct ipr_resource_entry*) ;
 int IPR_MAX_CDB_LEN ;
 int IPR_RQTYPE_ATA_PASSTHRU ;
 int IPR_TRACE_START ;
 int WARN_ON (int) ;
 void* cpu_to_be16 (int) ;
 int ipr_build_ata_ioadl (struct ipr_cmnd*,struct ata_queued_cmd*) ;
 int ipr_build_ata_ioadl64 (struct ipr_cmnd*,struct ata_queued_cmd*) ;
 int ipr_copy_sata_tf (struct ipr_ioarcb_ata_regs*,TYPE_8__*) ;
 int ipr_init_ipr_cmnd (struct ipr_cmnd*,int ) ;
 int ipr_lock_and_done ;
 int ipr_qc_defer (struct ata_queued_cmd*) ;
 int ipr_sata_done ;
 int ipr_send_command (struct ipr_cmnd*) ;
 int ipr_trc_hook (struct ipr_cmnd*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ipr_ioarcb_ata_regs*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ipr_qc_issue(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct ipr_sata_port *sata_port = ap->private_data;
 struct ipr_resource_entry *res = sata_port->res;
 struct ipr_ioa_cfg *ioa_cfg = sata_port->ioa_cfg;
 struct ipr_cmnd *ipr_cmd;
 struct ipr_ioarcb *ioarcb;
 struct ipr_ioarcb_ata_regs *regs;

 if (qc->lldd_task == ((void*)0))
  ipr_qc_defer(qc);

 ipr_cmd = qc->lldd_task;
 if (ipr_cmd == ((void*)0))
  return AC_ERR_SYSTEM;

 qc->lldd_task = ((void*)0);
 spin_lock(&ipr_cmd->hrrq->_lock);
 if (unlikely(!ipr_cmd->hrrq->allow_cmds ||
   ipr_cmd->hrrq->ioa_is_dead)) {
  list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
  spin_unlock(&ipr_cmd->hrrq->_lock);
  return AC_ERR_SYSTEM;
 }

 ipr_init_ipr_cmnd(ipr_cmd, ipr_lock_and_done);
 ioarcb = &ipr_cmd->ioarcb;

 if (ioa_cfg->sis64) {
  regs = &ipr_cmd->i.ata_ioadl.regs;
  ioarcb->add_cmd_parms_offset = cpu_to_be16(sizeof(*ioarcb));
 } else
  regs = &ioarcb->u.add_data.u.regs;

 memset(regs, 0, sizeof(*regs));
 ioarcb->add_cmd_parms_len = cpu_to_be16(sizeof(*regs));

 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);
 ipr_cmd->qc = qc;
 ipr_cmd->done = ipr_sata_done;
 ipr_cmd->ioarcb.res_handle = res->res_handle;
 ioarcb->cmd_pkt.request_type = IPR_RQTYPE_ATA_PASSTHRU;
 ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_LINK_DESC;
 ioarcb->cmd_pkt.flags_hi |= IPR_FLAGS_HI_NO_ULEN_CHK;
 ipr_cmd->dma_use_sg = qc->n_elem;

 if (ioa_cfg->sis64)
  ipr_build_ata_ioadl64(ipr_cmd, qc);
 else
  ipr_build_ata_ioadl(ipr_cmd, qc);

 regs->flags |= IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION;
 ipr_copy_sata_tf(regs, &qc->tf);
 memcpy(ioarcb->cmd_pkt.cdb, qc->cdb, IPR_MAX_CDB_LEN);
 ipr_trc_hook(ipr_cmd, IPR_TRACE_START, IPR_GET_RES_PHYS_LOC(res));

 switch (qc->tf.protocol) {
 case 129:
 case 128:
  break;

 case 130:
  regs->flags |= IPR_ATA_FLAG_XFER_TYPE_DMA;
  break;

 case 131:
 case 132:
  regs->flags |= IPR_ATA_FLAG_PACKET_CMD;
  break;

 case 133:
  regs->flags |= IPR_ATA_FLAG_PACKET_CMD;
  regs->flags |= IPR_ATA_FLAG_XFER_TYPE_DMA;
  break;

 default:
  WARN_ON(1);
  spin_unlock(&ipr_cmd->hrrq->_lock);
  return AC_ERR_INVALID;
 }

 ipr_send_command(ipr_cmd);
 spin_unlock(&ipr_cmd->hrrq->_lock);

 return 0;
}
