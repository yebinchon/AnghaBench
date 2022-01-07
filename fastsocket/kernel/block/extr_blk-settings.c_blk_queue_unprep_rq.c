
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unprep_rq_fn ;
struct request_queue {int * unprep_rq_fn; } ;



void blk_queue_unprep_rq(struct request_queue *q, unprep_rq_fn *ufn)
{
 q->unprep_rq_fn = ufn;
}
