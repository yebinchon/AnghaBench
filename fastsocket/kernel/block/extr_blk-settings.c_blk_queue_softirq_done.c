
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * softirq_done_fn; } ;
typedef int softirq_done_fn ;



void blk_queue_softirq_done(struct request_queue *q, softirq_done_fn *fn)
{
 q->softirq_done_fn = fn;
}
