
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
struct bio {scalar_t__ bi_seg_back_size; scalar_t__ bi_seg_front_size; } ;


 int BIOVEC_PHYS_MERGEABLE (int ,int ) ;
 scalar_t__ BIO_SEG_BOUNDARY (struct request_queue*,struct bio*,struct bio*) ;
 int QUEUE_FLAG_CLUSTER ;
 int __BVEC_END (struct bio*) ;
 int __BVEC_START (struct bio*) ;
 int bio_has_data (struct bio*) ;
 scalar_t__ queue_max_segment_size (struct request_queue*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int blk_phys_contig_segment(struct request_queue *q, struct bio *bio,
       struct bio *nxt)
{
 if (!test_bit(QUEUE_FLAG_CLUSTER, &q->queue_flags))
  return 0;

 if (bio->bi_seg_back_size + nxt->bi_seg_front_size >
     queue_max_segment_size(q))
  return 0;

 if (!bio_has_data(bio))
  return 1;

 if (!BIOVEC_PHYS_MERGEABLE(__BVEC_END(bio), __BVEC_START(nxt)))
  return 0;





 if (BIO_SEG_BOUNDARY(q, bio, nxt))
  return 1;

 return 0;
}
