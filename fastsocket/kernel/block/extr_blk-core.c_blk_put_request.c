
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {struct request_queue* q; } ;


 int __blk_put_request (struct request_queue*,struct request*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void blk_put_request(struct request *req)
{
 unsigned long flags;
 struct request_queue *q = req->q;

 spin_lock_irqsave(q->queue_lock, flags);
 __blk_put_request(q, req);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
