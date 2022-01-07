
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * merge_bvec_fn; } ;
typedef int merge_bvec_fn ;



void blk_queue_merge_bvec(struct request_queue *q, merge_bvec_fn *mbfn)
{
 q->merge_bvec_fn = mbfn;
}
