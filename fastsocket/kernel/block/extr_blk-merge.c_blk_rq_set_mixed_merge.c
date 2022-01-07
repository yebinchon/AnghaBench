
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {unsigned int cmd_flags; struct bio* bio; } ;
struct bio {unsigned int bi_rw; struct bio* bi_next; } ;


 unsigned int REQ_FAILFAST_MASK ;
 int REQ_MIXED_MERGE ;
 int WARN_ON_ONCE (int) ;

void blk_rq_set_mixed_merge(struct request *rq)
{
 unsigned int ff = rq->cmd_flags & REQ_FAILFAST_MASK;
 struct bio *bio;

 if (rq->cmd_flags & REQ_MIXED_MERGE)
  return;






 for (bio = rq->bio; bio; bio = bio->bi_next) {
  WARN_ON_ONCE((bio->bi_rw & REQ_FAILFAST_MASK) &&
        (bio->bi_rw & REQ_FAILFAST_MASK) != ff);
  bio->bi_rw |= ff;
 }
 rq->cmd_flags |= REQ_MIXED_MERGE;
}
