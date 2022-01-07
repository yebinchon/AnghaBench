
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int READ ;
 int WRITE ;
 int __GFP_WAIT ;
 struct request* get_request (struct request_queue*,int,int *,int) ;
 struct request* get_request_wait (struct request_queue*,int,int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

struct request *blk_get_request(struct request_queue *q, int rw, gfp_t gfp_mask)
{
 struct request *rq;

 BUG_ON(rw != READ && rw != WRITE);

 spin_lock_irq(q->queue_lock);
 if (gfp_mask & __GFP_WAIT)
  rq = get_request_wait(q, rw, ((void*)0));
 else
  rq = get_request(q, rw, ((void*)0), gfp_mask);
 if (!rq)
  spin_unlock_irq(q->queue_lock);


 return rq;
}
