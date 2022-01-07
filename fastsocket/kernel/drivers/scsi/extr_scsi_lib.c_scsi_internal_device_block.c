
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int queue_lock; } ;


 int SDEV_BLOCK ;
 int SDEV_CREATED_BLOCK ;
 int blk_stop_queue (struct request_queue*) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int
scsi_internal_device_block(struct scsi_device *sdev)
{
 struct request_queue *q = sdev->request_queue;
 unsigned long flags;
 int err = 0;

 err = scsi_device_set_state(sdev, SDEV_BLOCK);
 if (err) {
  err = scsi_device_set_state(sdev, SDEV_CREATED_BLOCK);

  if (err)
   return err;
 }






 spin_lock_irqsave(q->queue_lock, flags);
 blk_stop_queue(q);
 spin_unlock_irqrestore(q->queue_lock, flags);

 return 0;
}
