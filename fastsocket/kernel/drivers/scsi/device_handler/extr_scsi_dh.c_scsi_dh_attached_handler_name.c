
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_2__* scsi_dh_data; } ;
struct request_queue {int queue_lock; struct scsi_device* queuedata; } ;
typedef int gfp_t ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {int name; } ;


 int get_device (int *) ;
 char* kstrdup (int ,int ) ;
 int put_device (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

const char *scsi_dh_attached_handler_name(struct request_queue *q, gfp_t gfp)
{
 unsigned long flags;
 struct scsi_device *sdev;
 const char *handler_name = ((void*)0);

 spin_lock_irqsave(q->queue_lock, flags);
 sdev = q->queuedata;
 if (!sdev || !get_device(&sdev->sdev_gendev))
  sdev = ((void*)0);
 spin_unlock_irqrestore(q->queue_lock, flags);

 if (!sdev)
  return ((void*)0);

 if (sdev->scsi_dh_data)
  handler_name = kstrdup(sdev->scsi_dh_data->scsi_dh->name, gfp);

 put_device(&sdev->sdev_gendev);
 return handler_name;
}
