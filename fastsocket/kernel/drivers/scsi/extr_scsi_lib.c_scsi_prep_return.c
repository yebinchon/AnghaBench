
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int device_busy; } ;
struct scsi_cmnd {int dummy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct request {int errors; int cmd_flags; struct scsi_cmnd* special; } ;




 int DID_NO_CONNECT ;
 int REQ_DONTPREP ;
 int blk_plug_device (struct request_queue*) ;
 int scsi_put_command (struct scsi_cmnd*) ;
 int scsi_release_buffers (struct scsi_cmnd*) ;

int scsi_prep_return(struct request_queue *q, struct request *req, int ret)
{
 struct scsi_device *sdev = q->queuedata;

 switch (ret) {
 case 128:
  req->errors = DID_NO_CONNECT << 16;

  if (req->special) {
   struct scsi_cmnd *cmd = req->special;
   scsi_release_buffers(cmd);
   scsi_put_command(cmd);
   req->special = ((void*)0);
  }
  break;
 case 129:





  if (sdev->device_busy == 0)
   blk_plug_device(q);
  break;
 default:
  req->cmd_flags |= REQ_DONTPREP;
 }

 return ret;
}
