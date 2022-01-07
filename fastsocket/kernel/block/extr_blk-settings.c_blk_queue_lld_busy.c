
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * lld_busy_fn; } ;
typedef int lld_busy_fn ;



void blk_queue_lld_busy(struct request_queue *q, lld_busy_fn *fn)
{
 q->lld_busy_fn = fn;
}
