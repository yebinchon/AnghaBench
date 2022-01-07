
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {void* special; } ;
struct bio {struct bio* bi_next; int bi_flags; } ;
struct TYPE_2__ {struct bio* nxbio; struct request* rq; int buf; } ;
struct aoedev {TYPE_1__ ip; } ;


 int BIO_UPTODATE ;
 int aoe_end_request (struct aoedev*,struct request*,int ) ;
 int aoe_failbuf (struct aoedev*,int ) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void
aoe_failip(struct aoedev *d)
{
 struct request *rq;
 struct bio *bio;
 unsigned long n;

 aoe_failbuf(d, d->ip.buf);

 rq = d->ip.rq;
 if (rq == ((void*)0))
  return;
 while ((bio = d->ip.nxbio)) {
  clear_bit(BIO_UPTODATE, &bio->bi_flags);
  d->ip.nxbio = bio->bi_next;
  n = (unsigned long) rq->special;
  rq->special = (void *) --n;
 }
 if ((unsigned long) rq->special == 0)
  aoe_end_request(d, rq, 0);
}
