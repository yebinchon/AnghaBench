
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {int queue_depth; int ordered_tags; int simple_tags; TYPE_2__* request_queue; TYPE_1__* host; } ;
struct TYPE_5__ {int queue_lock; } ;
struct TYPE_4__ {int bqt; } ;


 int KERN_WARNING ;


 scalar_t__ blk_queue_resize_tags (TYPE_2__*,int) ;
 scalar_t__ blk_queue_tagged (TYPE_2__*) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_adjust_queue_depth(struct scsi_device *sdev, int tagged, int tags)
{
 unsigned long flags;




 if (tags <= 0)
  return;

 spin_lock_irqsave(sdev->request_queue->queue_lock, flags);
 if (!sdev->host->bqt) {
  if (blk_queue_tagged(sdev->request_queue) &&
      blk_queue_resize_tags(sdev->request_queue, tags) != 0)
   goto out;
 }

 sdev->queue_depth = tags;
 switch (tagged) {
  case 129:
   sdev->ordered_tags = 1;
   sdev->simple_tags = 1;
   break;
  case 128:
   sdev->ordered_tags = 0;
   sdev->simple_tags = 1;
   break;
  default:
   sdev_printk(KERN_WARNING, sdev,
        "scsi_adjust_queue_depth, bad queue type, "
        "disabled\n");
  case 0:
   sdev->ordered_tags = sdev->simple_tags = 0;
   sdev->queue_depth = tags;
   break;
 }
 out:
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);
}
