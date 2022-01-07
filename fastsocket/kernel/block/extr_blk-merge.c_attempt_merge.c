
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int cmd_flags; scalar_t__ rq_disk; int * bio; int cpu; int ioprio; int __data_len; TYPE_1__* biotail; int start_time; scalar_t__ special; } ;
struct TYPE_2__ {int * bi_next; } ;


 int REQ_DISCARD ;
 int REQ_FAILFAST_MASK ;
 int REQ_MIXED_MERGE ;
 int __blk_put_request (struct request_queue*,struct request*) ;
 int blk_account_io_merge (struct request*) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 scalar_t__ blk_rq_cpu_valid (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int blk_rq_set_mixed_merge (struct request*) ;
 int elv_merge_requests (struct request_queue*,struct request*,struct request*) ;
 int ioprio_best (int ,int ) ;
 int ll_merge_requests_fn (struct request_queue*,struct request*,struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int rq_mergeable (struct request*) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static int attempt_merge(struct request_queue *q, struct request *req,
     struct request *next)
{
 if (!rq_mergeable(req) || !rq_mergeable(next))
  return 0;




 if ((req->cmd_flags & REQ_DISCARD) != (next->cmd_flags & REQ_DISCARD))
  return 0;




 if (blk_rq_pos(req) + blk_rq_sectors(req) != blk_rq_pos(next))
  return 0;

 if (rq_data_dir(req) != rq_data_dir(next)
     || req->rq_disk != next->rq_disk
     || next->special)
  return 0;

 if (blk_integrity_rq(req) != blk_integrity_rq(next))
  return 0;







 if (!ll_merge_requests_fn(q, req, next))
  return 0;







 if ((req->cmd_flags | next->cmd_flags) & REQ_MIXED_MERGE ||
     (req->cmd_flags & REQ_FAILFAST_MASK) !=
     (next->cmd_flags & REQ_FAILFAST_MASK)) {
  blk_rq_set_mixed_merge(req);
  blk_rq_set_mixed_merge(next);
 }







 if (time_after(req->start_time, next->start_time))
  req->start_time = next->start_time;

 req->biotail->bi_next = next->bio;
 req->biotail = next->biotail;

 req->__data_len += blk_rq_bytes(next);

 elv_merge_requests(q, req, next);




 blk_account_io_merge(next);

 req->ioprio = ioprio_best(req->ioprio, next->ioprio);
 if (blk_rq_cpu_valid(next))
  req->cpu = next->cpu;


 next->bio = ((void*)0);
 __blk_put_request(q, next);
 return 1;
}
