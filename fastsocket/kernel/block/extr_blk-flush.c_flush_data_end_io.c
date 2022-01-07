
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {struct request_queue* q; } ;


 int REQ_FSEQ_DATA ;
 scalar_t__ blk_flush_complete_seq (struct request*,int ,int) ;
 int blk_run_queue_async (struct request_queue*) ;
 int elv_queue_empty (struct request_queue*) ;

__attribute__((used)) static void flush_data_end_io(struct request *rq, int error)
{
 struct request_queue *q = rq->q;
 bool was_empty = elv_queue_empty(q);





 if (blk_flush_complete_seq(rq, REQ_FSEQ_DATA, error) && was_empty)
  blk_run_queue_async(q);
}
