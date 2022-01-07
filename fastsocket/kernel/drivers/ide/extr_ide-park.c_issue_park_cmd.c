
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int cmd_len; unsigned long* special; void* cmd_type; int * cmd; } ;
struct TYPE_4__ {int lock; int timer; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dev_flags; unsigned long sleep; struct request_queue* queue; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ELEVATOR_INSERT_FRONT ;
 int GFP_NOWAIT ;
 int IDE_DFLAG_PARKED ;
 int READ ;
 int REQ_PARK_HEADS ;
 void* REQ_TYPE_SPECIAL ;
 int REQ_UNPARK_HEADS ;
 int __GFP_WAIT ;
 int blk_execute_rq (struct request_queue*,int *,struct request*,int) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_run_queue (struct request_queue*) ;
 scalar_t__ del_timer (int *) ;
 int elv_add_request (struct request_queue*,struct request*,int ,int) ;
 int ide_park_wq ;
 scalar_t__ jiffies ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int time_before (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void issue_park_cmd(ide_drive_t *drive, unsigned long timeout)
{
 ide_hwif_t *hwif = drive->hwif;
 struct request_queue *q = drive->queue;
 struct request *rq;
 int rc;

 timeout += jiffies;
 spin_lock_irq(&hwif->lock);
 if (drive->dev_flags & IDE_DFLAG_PARKED) {
  int reset_timer = time_before(timeout, drive->sleep);
  int start_queue = 0;

  drive->sleep = timeout;
  wake_up_all(&ide_park_wq);
  if (reset_timer && del_timer(&hwif->timer))
   start_queue = 1;
  spin_unlock_irq(&hwif->lock);

  if (start_queue)
   blk_run_queue(q);
  return;
 }
 spin_unlock_irq(&hwif->lock);

 rq = blk_get_request(q, READ, __GFP_WAIT);
 rq->cmd[0] = REQ_PARK_HEADS;
 rq->cmd_len = 1;
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->special = &timeout;
 rc = blk_execute_rq(q, ((void*)0), rq, 1);
 blk_put_request(rq);
 if (rc)
  goto out;





 rq = blk_get_request(q, READ, GFP_NOWAIT);
 if (unlikely(!rq))
  goto out;

 rq->cmd[0] = REQ_UNPARK_HEADS;
 rq->cmd_len = 1;
 rq->cmd_type = REQ_TYPE_SPECIAL;
 elv_add_request(q, rq, ELEVATOR_INSERT_FRONT, 1);

out:
 return;
}
