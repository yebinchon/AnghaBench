
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {int dummy; } ;


 int __elv_add_request (struct request_queue*,struct request*,int,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void elv_add_request(struct request_queue *q, struct request *rq, int where,
       int plug)
{
 unsigned long flags;

 spin_lock_irqsave(q->queue_lock, flags);
 __elv_add_request(q, rq, where, plug);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
