
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* count; int* starved; } ;
struct request_queue {int queue_lock; TYPE_1__ rq; } ;
struct request {int errors; } ;


 int ENXIO ;
 int blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_stop_queue (struct request_queue*) ;
 int bsg_unregister_queue (struct request_queue*) ;
 int msleep (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void bsg_remove_queue(struct request_queue *q)
{
 struct request *req;
 int counts;

 if (!q)
  return;


 spin_lock_irq(q->queue_lock);
 blk_stop_queue(q);


 while (1) {



  req = blk_fetch_request(q);

  counts = q->rq.count[0] + q->rq.count[1] +
    q->rq.starved[0] + q->rq.starved[1];
  spin_unlock_irq(q->queue_lock);

  if (counts == 0)
   break;






  if (req) {



   req->errors = -ENXIO;
   blk_end_request_all(req, -ENXIO);
  }

  msleep(200);
  spin_lock_irq(q->queue_lock);
 }
 bsg_unregister_queue(q);
}
