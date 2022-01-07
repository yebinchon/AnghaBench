
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct request_queue {TYPE_1__ timeout; int timeout_list; scalar_t__ rq_timeout; int rq_timed_out_fn; } ;
struct request {scalar_t__ deadline; int timeout_list; scalar_t__ timeout; int atomic_flags; struct request_queue* q; } ;


 int BUG_ON (int) ;
 int REQ_ATOM_COMPLETE ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 unsigned long round_jiffies_up (scalar_t__) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int timer_pending (TYPE_1__*) ;

void blk_add_timer(struct request *req)
{
 struct request_queue *q = req->q;
 unsigned long expiry;

 if (!q->rq_timed_out_fn)
  return;

 BUG_ON(!list_empty(&req->timeout_list));
 BUG_ON(test_bit(REQ_ATOM_COMPLETE, &req->atomic_flags));





 if (!req->timeout)
  req->timeout = q->rq_timeout;

 req->deadline = jiffies + req->timeout;
 list_add_tail(&req->timeout_list, &q->timeout_list);






 expiry = round_jiffies_up(req->deadline);

 if (!timer_pending(&q->timeout) ||
     time_before(expiry, q->timeout.expires))
  mod_timer(&q->timeout, expiry);
}
