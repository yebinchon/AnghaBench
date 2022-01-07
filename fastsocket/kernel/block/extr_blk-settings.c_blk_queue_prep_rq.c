
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * prep_rq_fn; } ;
typedef int prep_rq_fn ;



void blk_queue_prep_rq(struct request_queue *q, prep_rq_fn *pfn)
{
 q->prep_rq_fn = pfn;
}
