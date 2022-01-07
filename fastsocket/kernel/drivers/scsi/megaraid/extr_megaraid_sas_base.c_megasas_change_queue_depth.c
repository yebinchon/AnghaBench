
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct TYPE_2__ {int can_queue; } ;


 int EOPNOTSUPP ;
 int SCSI_QDEPTH_DEFAULT ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int scsi_get_tag_type (struct scsi_device*) ;

__attribute__((used)) static int megasas_change_queue_depth(struct scsi_device *sdev,
          int queue_depth, int reason)
{
 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

 if (queue_depth > sdev->host->can_queue)
  queue_depth = sdev->host->can_queue;
 scsi_adjust_queue_depth(sdev, scsi_get_tag_type(sdev),
    queue_depth);

 return queue_depth;
}
