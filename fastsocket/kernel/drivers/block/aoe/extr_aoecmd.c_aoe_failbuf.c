
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buf {scalar_t__ nframesout; TYPE_1__* bio; scalar_t__ resid; } ;
struct aoedev {int dummy; } ;
struct TYPE_2__ {int bi_flags; } ;


 int BIO_UPTODATE ;
 int aoe_end_buf (struct aoedev*,struct buf*) ;
 int clear_bit (int ,int *) ;

void
aoe_failbuf(struct aoedev *d, struct buf *buf)
{
 if (buf == ((void*)0))
  return;
 buf->resid = 0;
 clear_bit(BIO_UPTODATE, &buf->bio->bi_flags);
 if (buf->nframesout == 0)
  aoe_end_buf(d, buf);
}
