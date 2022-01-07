
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;
struct scsi_device {int sdev_gendev; } ;
struct request_queue {int queue_lock; struct scsi_device* queuedata; } ;


 int EINVAL ;
 int ENODEV ;
 int get_device (int *) ;
 struct scsi_device_handler* get_device_handler (char const*) ;
 int put_device (int *) ;
 int scsi_dh_handler_attach (struct scsi_device*,struct scsi_device_handler*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int scsi_dh_attach(struct request_queue *q, const char *name)
{
 unsigned long flags;
 struct scsi_device *sdev;
 struct scsi_device_handler *scsi_dh;
 int err = 0;

 scsi_dh = get_device_handler(name);
 if (!scsi_dh)
  return -EINVAL;

 spin_lock_irqsave(q->queue_lock, flags);
 sdev = q->queuedata;
 if (!sdev || !get_device(&sdev->sdev_gendev))
  err = -ENODEV;
 spin_unlock_irqrestore(q->queue_lock, flags);

 if (!err) {
  err = scsi_dh_handler_attach(sdev, scsi_dh);
  put_device(&sdev->sdev_gendev);
 }
 return err;
}
