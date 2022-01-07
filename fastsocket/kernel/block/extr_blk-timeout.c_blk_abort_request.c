
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_delete_timer (struct request*) ;
 scalar_t__ blk_mark_rq_complete (struct request*) ;
 int blk_rq_timed_out (struct request*) ;

void blk_abort_request(struct request *req)
{
 if (blk_mark_rq_complete(req))
  return;
 blk_delete_timer(req);
 blk_rq_timed_out(req);
}
