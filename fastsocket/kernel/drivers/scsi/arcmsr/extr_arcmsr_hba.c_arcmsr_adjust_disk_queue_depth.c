
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int ARCMSR_MAX_CMD_PERLUN ;
 int EOPNOTSUPP ;
 int MSG_ORDERED_TAG ;
 int SCSI_QDEPTH_DEFAULT ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static int arcmsr_adjust_disk_queue_depth(struct scsi_device *sdev,
       int queue_depth, int reason)
{
 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

 if (queue_depth > ARCMSR_MAX_CMD_PERLUN)
  queue_depth = ARCMSR_MAX_CMD_PERLUN;
 scsi_adjust_queue_depth(sdev, MSG_ORDERED_TAG, queue_depth);
 return queue_depth;
}
