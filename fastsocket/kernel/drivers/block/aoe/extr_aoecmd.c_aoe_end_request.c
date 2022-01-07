
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct bio {int bi_flags; int bi_size; } ;
struct TYPE_2__ {struct request* rq; } ;
struct aoedev {TYPE_1__ ip; struct request_queue* blkq; } ;


 int BIO_UPTODATE ;
 int EIO ;
 scalar_t__ __blk_end_request (struct request*,int ,int ) ;
 int __blk_run_queue (struct request_queue*) ;
 scalar_t__ test_bit (int ,int *) ;

void
aoe_end_request(struct aoedev *d, struct request *rq, int fastfail)
{
 struct bio *bio;
 int bok;
 struct request_queue *q;

 q = d->blkq;
 if (rq == d->ip.rq)
  d->ip.rq = ((void*)0);
 do {
  bio = rq->bio;
  bok = !fastfail && test_bit(BIO_UPTODATE, &bio->bi_flags);
 } while (__blk_end_request(rq, bok ? 0 : -EIO, bio->bi_size));


 if (!fastfail)
  __blk_run_queue(q);
}
