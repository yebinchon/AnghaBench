
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int bio; int q; int nr_phys_segments; } ;


 int __blk_recalc_rq_segments (int ,int ) ;

void blk_recalc_rq_segments(struct request *rq)
{
 rq->nr_phys_segments = __blk_recalc_rq_segments(rq->q, rq->bio);
}
