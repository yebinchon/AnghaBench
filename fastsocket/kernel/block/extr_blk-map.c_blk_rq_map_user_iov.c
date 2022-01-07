
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_iovec {int iov_len; scalar_t__ iov_base; } ;
struct rq_map_data {int dummy; } ;
struct request_queue {unsigned int dma_pad_mask; } ;
struct request {int * buffer; int cmd_flags; } ;
struct bio {unsigned int bi_size; } ;
typedef int gfp_t ;


 int BIO_USER_MAPPED ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 scalar_t__ READ ;
 int REQ_COPY_USER ;
 int __blk_rq_unmap_user (struct bio*) ;
 struct bio* bio_copy_user_iov (struct request_queue*,struct rq_map_data*,struct sg_iovec*,int,int,int ) ;
 int bio_endio (struct bio*,int ) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_get (struct bio*) ;
 struct bio* bio_map_user_iov (struct request_queue*,int *,struct sg_iovec*,int,int,int ) ;
 int blk_queue_bounce (struct request_queue*,struct bio**) ;
 int blk_rq_bio_prep (struct request_queue*,struct request*,struct bio*) ;
 unsigned long queue_dma_alignment (struct request_queue*) ;
 scalar_t__ rq_data_dir (struct request*) ;

int blk_rq_map_user_iov(struct request_queue *q, struct request *rq,
   struct rq_map_data *map_data, struct sg_iovec *iov,
   int iov_count, unsigned int len, gfp_t gfp_mask)
{
 struct bio *bio;
 int i, read = rq_data_dir(rq) == READ;
 int unaligned = 0;

 if (!iov || iov_count <= 0)
  return -EINVAL;

 for (i = 0; i < iov_count; i++) {
  unsigned long uaddr = (unsigned long)iov[i].iov_base;

  if (!iov[i].iov_len)
   return -EINVAL;

  if (uaddr & queue_dma_alignment(q)) {
   unaligned = 1;
   break;
  }
 }

 if (unaligned || (q->dma_pad_mask & len) || map_data)
  bio = bio_copy_user_iov(q, map_data, iov, iov_count, read,
     gfp_mask);
 else
  bio = bio_map_user_iov(q, ((void*)0), iov, iov_count, read, gfp_mask);

 if (IS_ERR(bio))
  return PTR_ERR(bio);

 if (bio->bi_size != len) {





  bio_get(bio);
  bio_endio(bio, 0);
  __blk_rq_unmap_user(bio);
  return -EINVAL;
 }

 if (!bio_flagged(bio, BIO_USER_MAPPED))
  rq->cmd_flags |= REQ_COPY_USER;

 blk_queue_bounce(q, &bio);
 bio_get(bio);
 blk_rq_bio_prep(q, rq, bio);
 rq->buffer = ((void*)0);
 return 0;
}
