
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {void* special; struct bio* bio; } ;
struct buf {int dummy; } ;
struct bio {struct bio* bi_next; } ;
struct TYPE_2__ {struct buf* buf; struct request* rq; struct bio* nxbio; } ;
struct aoedev {TYPE_1__ ip; int bufpool; struct request_queue* blkq; } ;


 int GFP_ATOMIC ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 int bufinit (struct buf*,struct request*,struct bio*) ;
 struct buf* mempool_alloc (int ,int ) ;
 int pr_err (char*) ;
 scalar_t__ rqbiocnt (struct request*) ;

__attribute__((used)) static struct buf *
nextbuf(struct aoedev *d)
{
 struct request *rq;
 struct request_queue *q;
 struct buf *buf;
 struct bio *bio;

 q = d->blkq;
 if (q == ((void*)0))
  return ((void*)0);
 if (d->ip.buf)
  return d->ip.buf;
 rq = d->ip.rq;
 if (rq == ((void*)0)) {
  rq = blk_peek_request(q);
  if (rq == ((void*)0))
   return ((void*)0);
  blk_start_request(rq);
  d->ip.rq = rq;
  d->ip.nxbio = rq->bio;
  rq->special = (void *) rqbiocnt(rq);
 }
 buf = mempool_alloc(d->bufpool, GFP_ATOMIC);
 if (buf == ((void*)0)) {
  pr_err("aoe: nextbuf: unable to mempool_alloc!\n");
  return ((void*)0);
 }
 bio = d->ip.nxbio;
 bufinit(buf, rq, bio);
 bio = bio->bi_next;
 d->ip.nxbio = bio;
 if (bio == ((void*)0))
  d->ip.rq = ((void*)0);
 return d->ip.buf = buf;
}
