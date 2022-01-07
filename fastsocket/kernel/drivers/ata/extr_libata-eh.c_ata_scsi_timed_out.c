
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_3__* device; } ;
struct ata_queued_cmd {int err_mask; int flags; struct scsi_cmnd* scsicmd; } ;
struct TYPE_5__ {int active_tag; } ;
struct ata_port {int lock; TYPE_2__ link; TYPE_1__* ops; } ;
struct Scsi_Host {int dummy; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_6__ {struct Scsi_Host* host; } ;
struct TYPE_4__ {scalar_t__ error_handler; } ;


 int AC_ERR_TIMEOUT ;
 int ATA_QCFLAG_EH_SCHEDULED ;
 int BLK_EH_HANDLED ;
 int BLK_EH_NOT_HANDLED ;
 int DPRINTK (char*,...) ;
 int WARN_ON (int) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

enum blk_eh_timer_return ata_scsi_timed_out(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *host = cmd->device->host;
 struct ata_port *ap = ata_shost_to_port(host);
 unsigned long flags;
 struct ata_queued_cmd *qc;
 enum blk_eh_timer_return ret;

 DPRINTK("ENTER\n");

 if (ap->ops->error_handler) {
  ret = BLK_EH_NOT_HANDLED;
  goto out;
 }

 ret = BLK_EH_HANDLED;
 spin_lock_irqsave(ap->lock, flags);
 qc = ata_qc_from_tag(ap, ap->link.active_tag);
 if (qc) {
  WARN_ON(qc->scsicmd != cmd);
  qc->flags |= ATA_QCFLAG_EH_SCHEDULED;
  qc->err_mask |= AC_ERR_TIMEOUT;
  ret = BLK_EH_NOT_HANDLED;
 }
 spin_unlock_irqrestore(ap->lock, flags);

 out:
 DPRINTK("EXIT, ret=%d\n", ret);
 return ret;
}
