
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; int start_time; int cmd_flags; } ;


 int REQ_IO_STAT ;
 int blk_insert_cloned_request (int ,struct request*) ;
 scalar_t__ blk_queue_io_stat (int ) ;
 int dm_complete_request (struct request*,int) ;
 int jiffies ;

void dm_dispatch_request(struct request *rq)
{
 int r;

 if (blk_queue_io_stat(rq->q))
  rq->cmd_flags |= REQ_IO_STAT;

 rq->start_time = jiffies;
 r = blk_insert_cloned_request(rq->q, rq);
 if (r)
  dm_complete_request(rq, r);
}
