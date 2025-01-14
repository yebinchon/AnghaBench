
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct request {scalar_t__ cmd_type; } ;


 int BLKPREP_KILL ;
 scalar_t__ REQ_TYPE_BLOCK_PC ;
 int scsi_prep_return (struct request_queue*,struct request*,int) ;
 int scsi_setup_blk_pc_cmnd (struct scsi_device*,struct request*) ;

int scsi_prep_fn(struct request_queue *q, struct request *req)
{
 struct scsi_device *sdev = q->queuedata;
 int ret = BLKPREP_KILL;

 if (req->cmd_type == REQ_TYPE_BLOCK_PC)
  ret = scsi_setup_blk_pc_cmnd(sdev, req);
 return scsi_prep_return(q, req, ret);
}
