
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ipr_cmnd {TYPE_1__* hrrq; int queue; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_2__ {int hrrq_free_q; } ;


 int DID_ERROR ;
 int list_add_tail (int *,int *) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void ipr_scsi_eh_done(struct ipr_cmnd *ipr_cmd)
{
 struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;

 scsi_cmd->result |= (DID_ERROR << 16);

 scsi_dma_unmap(ipr_cmd->scsi_cmd);
 scsi_cmd->scsi_done(scsi_cmd);
 list_add_tail(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}
