
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct frame {scalar_t__ bv_off; scalar_t__ sent_jiffs; int sent; int skb; scalar_t__ bcnt; struct buf* buf; TYPE_2__* bv; } ;
struct buf {scalar_t__ resid; scalar_t__ bv_resid; int nframesout; scalar_t__ sector; TYPE_2__* bv; } ;
struct aoetgt {int dummy; } ;
struct TYPE_3__ {int * buf; } ;
struct aoedev {scalar_t__ maxbcnt; TYPE_1__ ip; struct aoetgt** tgt; } ;
struct TYPE_4__ {scalar_t__ bv_offset; scalar_t__ bv_len; } ;


 scalar_t__ DEFAULTBCNT ;
 int GFP_ATOMIC ;
 int WARN_ON (int) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int aoenet_xmit (struct sk_buff_head*) ;
 int ata_rw_frameinit (struct frame*) ;
 int do_gettimeofday (int *) ;
 scalar_t__ jiffies ;
 struct frame* newframe (struct aoedev*) ;
 struct buf* nextbuf (struct aoedev*) ;
 struct sk_buff* skb_clone (int ,int ) ;

__attribute__((used)) static int
aoecmd_ata_rw(struct aoedev *d)
{
 struct frame *f;
 struct buf *buf;
 struct aoetgt *t;
 struct sk_buff *skb;
 struct sk_buff_head queue;
 ulong bcnt, fbcnt;

 buf = nextbuf(d);
 if (buf == ((void*)0))
  return 0;
 f = newframe(d);
 if (f == ((void*)0))
  return 0;
 t = *d->tgt;
 bcnt = d->maxbcnt;
 if (bcnt == 0)
  bcnt = DEFAULTBCNT;
 if (bcnt > buf->resid)
  bcnt = buf->resid;
 fbcnt = bcnt;
 f->bv = buf->bv;
 f->bv_off = f->bv->bv_offset + (f->bv->bv_len - buf->bv_resid);
 do {
  if (fbcnt < buf->bv_resid) {
   buf->bv_resid -= fbcnt;
   buf->resid -= fbcnt;
   break;
  }
  fbcnt -= buf->bv_resid;
  buf->resid -= buf->bv_resid;
  if (buf->resid == 0) {
   d->ip.buf = ((void*)0);
   break;
  }
  buf->bv++;
  buf->bv_resid = buf->bv->bv_len;
  WARN_ON(buf->bv_resid == 0);
 } while (fbcnt);


 f->buf = buf;
 f->bcnt = bcnt;
 ata_rw_frameinit(f);


 buf->nframesout += 1;
 buf->sector += bcnt >> 9;

 skb = skb_clone(f->skb, GFP_ATOMIC);
 if (skb) {
  do_gettimeofday(&f->sent);
  f->sent_jiffs = (u32) jiffies;
  __skb_queue_head_init(&queue);
  __skb_queue_tail(&queue, skb);
  aoenet_xmit(&queue);
 }
 return 1;
}
