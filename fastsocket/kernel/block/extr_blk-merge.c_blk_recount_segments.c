
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int bi_flags; struct bio* bi_next; int bi_phys_segments; } ;


 int BIO_SEG_VALID ;
 int __blk_recalc_rq_segments (struct request_queue*,struct bio*) ;

void blk_recount_segments(struct request_queue *q, struct bio *bio)
{
 struct bio *nxt = bio->bi_next;

 bio->bi_next = ((void*)0);
 bio->bi_phys_segments = __blk_recalc_rq_segments(q, bio);
 bio->bi_next = nxt;
 bio->bi_flags |= (1 << BIO_SEG_VALID);
}
