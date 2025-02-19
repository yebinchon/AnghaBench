
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int * buffer; int bio; int cmd_flags; } ;
struct bio {int bi_rw; } ;
typedef int gfp_t ;


 int BIO_RW ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 scalar_t__ READ ;
 int REQ_COPY_USER ;
 scalar_t__ WRITE ;
 struct bio* bio_copy_kern (struct request_queue*,void*,unsigned int,int ,int) ;
 struct bio* bio_map_kern (struct request_queue*,void*,unsigned int,int ) ;
 int bio_put (struct bio*) ;
 int blk_queue_bounce (struct request_queue*,int *) ;
 int blk_rq_aligned (struct request_queue*,void*,unsigned int) ;
 int blk_rq_append_bio (struct request_queue*,struct request*,struct bio*) ;
 scalar_t__ object_is_on_stack (void*) ;
 int queue_max_hw_sectors (struct request_queue*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 scalar_t__ unlikely (int) ;

int blk_rq_map_kern(struct request_queue *q, struct request *rq, void *kbuf,
      unsigned int len, gfp_t gfp_mask)
{
 int reading = rq_data_dir(rq) == READ;
 int do_copy = 0;
 struct bio *bio;
 int ret;

 if (len > (queue_max_hw_sectors(q) << 9))
  return -EINVAL;
 if (!len || !kbuf)
  return -EINVAL;

 do_copy = !blk_rq_aligned(q, kbuf, len) || object_is_on_stack(kbuf);
 if (do_copy)
  bio = bio_copy_kern(q, kbuf, len, gfp_mask, reading);
 else
  bio = bio_map_kern(q, kbuf, len, gfp_mask);

 if (IS_ERR(bio))
  return PTR_ERR(bio);

 if (rq_data_dir(rq) == WRITE)
  bio->bi_rw |= (1 << BIO_RW);

 if (do_copy)
  rq->cmd_flags |= REQ_COPY_USER;

 ret = blk_rq_append_bio(q, rq, bio);
 if (unlikely(ret)) {

  bio_put(bio);
  return ret;
 }

 blk_queue_bounce(q, &rq->bio);
 rq->buffer = ((void*)0);
 return 0;
}
