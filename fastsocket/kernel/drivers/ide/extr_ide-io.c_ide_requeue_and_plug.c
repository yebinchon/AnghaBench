
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {int dummy; } ;
struct TYPE_3__ {struct request_queue* queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int blk_plug_device (struct request_queue*) ;
 int blk_requeue_request (struct request_queue*,struct request*) ;
 int elv_queue_empty (struct request_queue*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ide_requeue_and_plug(ide_drive_t *drive, struct request *rq)
{
 struct request_queue *q = drive->queue;
 unsigned long flags;

 spin_lock_irqsave(q->queue_lock, flags);

 if (rq)
  blk_requeue_request(q, rq);
 if (!elv_queue_empty(q))
  blk_plug_device(q);

 spin_unlock_irqrestore(q->queue_lock, flags);
}
