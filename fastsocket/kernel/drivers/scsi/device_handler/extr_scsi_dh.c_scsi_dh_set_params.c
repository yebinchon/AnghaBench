
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device_handler {int (* set_params ) (struct scsi_device*,char const*) ;} ;
struct scsi_device {int sdev_gendev; TYPE_1__* scsi_dh_data; } ;
struct request_queue {int queue_lock; struct scsi_device* queuedata; } ;
struct TYPE_2__ {struct scsi_device_handler* scsi_dh; } ;


 int SCSI_DH_NOSYS ;
 scalar_t__ get_device (int *) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_device*,char const*) ;

int scsi_dh_set_params(struct request_queue *q, const char *params)
{
 int err = -SCSI_DH_NOSYS;
 unsigned long flags;
 struct scsi_device *sdev;
 struct scsi_device_handler *scsi_dh = ((void*)0);

 spin_lock_irqsave(q->queue_lock, flags);
 sdev = q->queuedata;
 if (sdev && sdev->scsi_dh_data)
  scsi_dh = sdev->scsi_dh_data->scsi_dh;
 if (scsi_dh && scsi_dh->set_params && get_device(&sdev->sdev_gendev))
  err = 0;
 spin_unlock_irqrestore(q->queue_lock, flags);

 if (err)
  return err;
 err = scsi_dh->set_params(sdev, params);
 put_device(&sdev->sdev_gendev);
 return err;
}
