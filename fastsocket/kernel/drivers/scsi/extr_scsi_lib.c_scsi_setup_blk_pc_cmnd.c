
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cmnd {int transfersize; int allowed; int sc_data_direction; int cmd_len; int sdb; } ;
struct request {int retries; int cmd_len; int * buffer; int nr_phys_segments; scalar_t__ bio; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_OK ;
 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 scalar_t__ WRITE ;
 int blk_rq_bytes (struct request*) ;
 int memset (int *,int ,int) ;
 scalar_t__ rq_data_dir (struct request*) ;
 struct scsi_cmnd* scsi_get_cmd_from_req (struct scsi_device*,struct request*) ;
 int scsi_init_io (struct scsi_cmnd*,int ) ;
 int scsi_prep_state_check (struct scsi_device*,struct request*) ;
 scalar_t__ unlikely (int) ;

int scsi_setup_blk_pc_cmnd(struct scsi_device *sdev, struct request *req)
{
 struct scsi_cmnd *cmd;
 int ret = scsi_prep_state_check(sdev, req);

 if (ret != BLKPREP_OK)
  return ret;

 cmd = scsi_get_cmd_from_req(sdev, req);
 if (unlikely(!cmd))
  return BLKPREP_DEFER;







 if (req->bio) {
  int ret;

  BUG_ON(!req->nr_phys_segments);

  ret = scsi_init_io(cmd, GFP_ATOMIC);
  if (unlikely(ret))
   return ret;
 } else {
  BUG_ON(blk_rq_bytes(req));

  memset(&cmd->sdb, 0, sizeof(cmd->sdb));
  req->buffer = ((void*)0);
 }

 cmd->cmd_len = req->cmd_len;
 if (!blk_rq_bytes(req))
  cmd->sc_data_direction = DMA_NONE;
 else if (rq_data_dir(req) == WRITE)
  cmd->sc_data_direction = DMA_TO_DEVICE;
 else
  cmd->sc_data_direction = DMA_FROM_DEVICE;

 cmd->transfersize = blk_rq_bytes(req);
 cmd->allowed = req->retries;
 return BLKPREP_OK;
}
