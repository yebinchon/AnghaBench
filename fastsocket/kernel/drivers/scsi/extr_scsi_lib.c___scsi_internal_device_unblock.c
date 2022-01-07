
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ sdev_state; struct request_queue* request_queue; } ;
struct request_queue {int queue_lock; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int EINVAL ;
 scalar_t__ SDEV_BLOCK ;
 scalar_t__ SDEV_CANCEL ;
 int SDEV_CREATED ;
 scalar_t__ SDEV_CREATED_BLOCK ;
 int SDEV_OFFLINE ;
 scalar_t__ SDEV_TRANSPORT_OFFLINE ;
 int blk_start_queue (struct request_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int
__scsi_internal_device_unblock(struct scsi_device *sdev,
        enum scsi_device_state new_state)
{
 struct request_queue *q = sdev->request_queue;
 unsigned long flags;





 if ((sdev->sdev_state == SDEV_BLOCK) ||
     (sdev->sdev_state == SDEV_TRANSPORT_OFFLINE))
  sdev->sdev_state = new_state;
 else if (sdev->sdev_state == SDEV_CREATED_BLOCK) {
  if (new_state == SDEV_TRANSPORT_OFFLINE ||
      new_state == SDEV_OFFLINE)
   sdev->sdev_state = new_state;
  else
   sdev->sdev_state = SDEV_CREATED;
 } else if (sdev->sdev_state != SDEV_CANCEL &&
   sdev->sdev_state != SDEV_OFFLINE)
  return -EINVAL;

 spin_lock_irqsave(q->queue_lock, flags);
 blk_start_queue(q);
 spin_unlock_irqrestore(q->queue_lock, flags);

 return 0;
}
