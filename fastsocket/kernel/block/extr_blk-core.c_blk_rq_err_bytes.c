
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {unsigned int cmd_flags; struct bio* bio; } ;
struct bio {unsigned int bi_rw; scalar_t__ bi_size; struct bio* bi_next; } ;


 int BUG_ON (int) ;
 unsigned int REQ_FAILFAST_MASK ;
 int REQ_MIXED_MERGE ;
 unsigned int blk_rq_bytes (struct request const*) ;

unsigned int blk_rq_err_bytes(const struct request *rq)
{
 unsigned int ff = rq->cmd_flags & REQ_FAILFAST_MASK;
 unsigned int bytes = 0;
 struct bio *bio;

 if (!(rq->cmd_flags & REQ_MIXED_MERGE))
  return blk_rq_bytes(rq);
 for (bio = rq->bio; bio; bio = bio->bi_next) {
  if ((bio->bi_rw & ff) != ff)
   break;
  bytes += bio->bi_size;
 }


 BUG_ON(blk_rq_bytes(rq) && !bytes);
 return bytes;
}
