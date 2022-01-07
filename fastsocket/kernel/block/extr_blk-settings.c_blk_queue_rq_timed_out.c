
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * rq_timed_out_fn; } ;
typedef int rq_timed_out_fn ;



void blk_queue_rq_timed_out(struct request_queue *q, rq_timed_out_fn *fn)
{
 q->rq_timed_out_fn = fn;
}
