
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int last_queue_full_time; int last_queue_full_depth; int last_queue_full_count; scalar_t__ ordered_tags; TYPE_1__* host; } ;
struct TYPE_2__ {int cmd_per_lun; } ;


 int MSG_ORDERED_TAG ;
 int MSG_SIMPLE_TAG ;
 int jiffies ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;

int scsi_track_queue_full(struct scsi_device *sdev, int depth)
{






 if ((jiffies >> 4) == (sdev->last_queue_full_time >> 4))
  return 0;

 sdev->last_queue_full_time = jiffies;
 if (sdev->last_queue_full_depth != depth) {
  sdev->last_queue_full_count = 1;
  sdev->last_queue_full_depth = depth;
 } else {
  sdev->last_queue_full_count++;
 }

 if (sdev->last_queue_full_count <= 10)
  return 0;
 if (sdev->last_queue_full_depth < 8) {

  scsi_adjust_queue_depth(sdev, 0, sdev->host->cmd_per_lun);
  return -1;
 }

 if (sdev->ordered_tags)
  scsi_adjust_queue_depth(sdev, MSG_ORDERED_TAG, depth);
 else
  scsi_adjust_queue_depth(sdev, MSG_SIMPLE_TAG, depth);
 return depth;
}
