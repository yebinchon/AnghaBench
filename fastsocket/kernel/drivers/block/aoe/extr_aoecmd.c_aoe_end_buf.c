
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {void* special; } ;
struct buf {int bio; struct request* rq; } ;
struct TYPE_2__ {struct buf* buf; } ;
struct aoedev {int bufpool; TYPE_1__ ip; } ;


 int aoe_end_request (struct aoedev*,struct request*,int ) ;
 int bio_pagedec (int ) ;
 int mempool_free (struct buf*,int ) ;

__attribute__((used)) static void
aoe_end_buf(struct aoedev *d, struct buf *buf)
{
 struct request *rq;
 unsigned long n;

 if (buf == d->ip.buf)
  d->ip.buf = ((void*)0);
 rq = buf->rq;
 bio_pagedec(buf->bio);
 mempool_free(buf, d->bufpool);
 n = (unsigned long) rq->special;
 rq->special = (void *) --n;
 if (n == 0)
  aoe_end_request(d, rq, 0);
}
