
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int EOPNOTSUPP ;
 int MSG_ORDERED_TAG ;
 int SCSI_QDEPTH_DEFAULT ;
 int TW_Q_LENGTH ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

__attribute__((used)) static int twa_change_queue_depth(struct scsi_device *sdev, int queue_depth,
      int reason)
{
 if (reason != SCSI_QDEPTH_DEFAULT)
  return -EOPNOTSUPP;

 if (queue_depth > TW_Q_LENGTH-2)
  queue_depth = TW_Q_LENGTH-2;
 scsi_adjust_queue_depth(sdev, MSG_ORDERED_TAG, queue_depth);
 return queue_depth;
}
