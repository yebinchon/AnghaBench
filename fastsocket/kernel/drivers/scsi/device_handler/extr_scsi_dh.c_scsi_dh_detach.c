
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device_handler {int dummy; } ;
struct scsi_device {int sdev_gendev; TYPE_1__* scsi_dh_data; } ;
struct request_queue {int queue_lock; struct scsi_device* queuedata; } ;
struct TYPE_2__ {struct scsi_device_handler* scsi_dh; } ;


 int get_device (int *) ;
 int put_device (int *) ;
 int scsi_dh_handler_detach (struct scsi_device*,struct scsi_device_handler*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_dh_detach(struct request_queue *q)
{
 unsigned long flags;
 struct scsi_device *sdev;
 struct scsi_device_handler *scsi_dh = ((void*)0);

 spin_lock_irqsave(q->queue_lock, flags);
 sdev = q->queuedata;
 if (!sdev || !get_device(&sdev->sdev_gendev))
  sdev = ((void*)0);
 spin_unlock_irqrestore(q->queue_lock, flags);

 if (!sdev)
  return;

 if (sdev->scsi_dh_data) {
  scsi_dh = sdev->scsi_dh_data->scsi_dh;
  scsi_dh_handler_detach(sdev, scsi_dh);
 }
 put_device(&sdev->sdev_gendev);
}
