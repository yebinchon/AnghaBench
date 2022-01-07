
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_state; } ;
struct request {int cmd_flags; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 int KERN_ERR ;
 int REQ_PREEMPT ;





 int SDEV_RUNNING ;

 int sdev_printk (int ,struct scsi_device*,char*) ;
 scalar_t__ unlikely (int) ;

int scsi_prep_state_check(struct scsi_device *sdev, struct request *req)
{
 int ret = BLKPREP_OK;





 if (unlikely(sdev->sdev_state != SDEV_RUNNING)) {
  switch (sdev->sdev_state) {
  case 130:
  case 128:





   sdev_printk(KERN_ERR, sdev,
        "rejecting I/O to offline device\n");
   ret = BLKPREP_KILL;
   break;
  case 131:




   sdev_printk(KERN_ERR, sdev,
        "rejecting I/O to dead device\n");
   ret = BLKPREP_KILL;
   break;
  case 129:
  case 133:
  case 132:



   if (!(req->cmd_flags & REQ_PREEMPT))
    ret = BLKPREP_DEFER;
   break;
  default:





   if (!(req->cmd_flags & REQ_PREEMPT))
    ret = BLKPREP_KILL;
   break;
  }
 }
 return ret;
}
