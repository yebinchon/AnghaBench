
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {int errors; } ;
struct cdrom_info {scalar_t__ write_timeout; } ;
struct TYPE_3__ {struct request_queue* queue; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ ATAPI_WAIT_WRITE_BUSY ;
 int blk_plug_device (struct request_queue*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ide_cd_breathe(ide_drive_t *drive, struct request *rq)
{

 struct cdrom_info *info = drive->driver_data;

 if (!rq->errors)
  info->write_timeout = jiffies + ATAPI_WAIT_WRITE_BUSY;

 rq->errors = 1;

 if (time_after(jiffies, info->write_timeout))
  return 0;
 else {
  struct request_queue *q = drive->queue;
  unsigned long flags;





  spin_lock_irqsave(q->queue_lock, flags);
  blk_plug_device(q);
  spin_unlock_irqrestore(q->queue_lock, flags);

  return 1;
 }
}
