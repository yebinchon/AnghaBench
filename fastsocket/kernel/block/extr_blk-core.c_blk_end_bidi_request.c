
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {struct request_queue* q; } ;


 int blk_finish_request (struct request*,int) ;
 scalar_t__ blk_update_bidi_request (struct request*,int,unsigned int,unsigned int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static bool blk_end_bidi_request(struct request *rq, int error,
     unsigned int nr_bytes, unsigned int bidi_bytes)
{
 struct request_queue *q = rq->q;
 unsigned long flags;

 if (blk_update_bidi_request(rq, error, nr_bytes, bidi_bytes))
  return 1;

 spin_lock_irqsave(q->queue_lock, flags);
 blk_finish_request(rq, error);
 spin_unlock_irqrestore(q->queue_lock, flags);

 return 0;
}
