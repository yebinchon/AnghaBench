
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int queue_depth; } ;


 int EOPNOTSUPP ;
 int IBMVSCSI_MAX_CMDS_PER_LUN ;
 int SCSI_QDEPTH_DEFAULT ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static int ibmvscsi_change_queue_depth(struct scsi_device *sdev, int qdepth,
           int reason)
{
 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

 if (qdepth > IBMVSCSI_MAX_CMDS_PER_LUN)
  qdepth = IBMVSCSI_MAX_CMDS_PER_LUN;

 scsi_adjust_queue_depth(sdev, 0, qdepth);
 return sdev->queue_depth;
}
