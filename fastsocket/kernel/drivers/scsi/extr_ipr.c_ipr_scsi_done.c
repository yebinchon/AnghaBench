
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_5__ {int residual_data_len; int ioasc; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct TYPE_7__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int queue; TYPE_3__ s; struct scsi_cmnd* scsi_cmd; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_8__ {int lock; int hrrq_free_q; } ;


 scalar_t__ IPR_IOASC_SENSE_KEY (int ) ;
 int be32_to_cpu (int ) ;
 int ipr_erp_start (struct ipr_ioa_cfg*,struct ipr_cmnd*) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void ipr_scsi_done(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
 struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
 u32 ioasc = be32_to_cpu(ipr_cmd->s.ioasa.hdr.ioasc);
 unsigned long hrrq_flags;

 scsi_set_resid(scsi_cmd, be32_to_cpu(ipr_cmd->s.ioasa.hdr.residual_data_len));

 if (likely(IPR_IOASC_SENSE_KEY(ioasc) == 0)) {
  scsi_dma_unmap(scsi_cmd);

  spin_lock_irqsave(ipr_cmd->hrrq->lock, hrrq_flags);
  list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
  scsi_cmd->scsi_done(scsi_cmd);
  spin_unlock_irqrestore(ipr_cmd->hrrq->lock, hrrq_flags);
 } else {
  spin_lock_irqsave(ipr_cmd->hrrq->lock, hrrq_flags);
  ipr_erp_start(ioa_cfg, ipr_cmd);
  spin_unlock_irqrestore(ipr_cmd->hrrq->lock, hrrq_flags);
 }
}
