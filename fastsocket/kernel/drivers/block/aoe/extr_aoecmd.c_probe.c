
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; } ;
struct frame {size_t bcnt; scalar_t__ sent_jiffs; int sent; struct sk_buff* skb; int flags; } ;
struct aoetgt {struct aoedev* d; int addr; } ;
struct aoedev {size_t maxbcnt; int aoeminor; scalar_t__ aoemajor; } ;


 size_t DEFAULTBCNT ;
 int FFL_PROBE ;
 int GFP_ATOMIC ;
 size_t PAGE_SIZE ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int aoenet_xmit (struct sk_buff_head*) ;
 int ata_rw_frameinit (struct frame*) ;
 int do_gettimeofday (int *) ;
 int empty_page ;
 int ifrotate (struct aoetgt*) ;
 scalar_t__ jiffies ;
 struct frame* newtframe (struct aoedev*,struct aoetgt*) ;
 int pr_err (char*,char*,int ,long,int ,char*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_fill_page_desc (struct sk_buff*,int,int ,int ,size_t) ;

__attribute__((used)) static void
probe(struct aoetgt *t)
{
 struct aoedev *d;
 struct frame *f;
 struct sk_buff *skb;
 struct sk_buff_head queue;
 size_t n, m;
 int frag;

 d = t->d;
 f = newtframe(d, t);
 if (!f) {
  pr_err("%s %pm for e%ld.%d: %s\n",
   "aoe: cannot probe remote address",
   t->addr,
   (long) d->aoemajor, d->aoeminor,
   "no frame available");
  return;
 }
 f->flags |= FFL_PROBE;
 ifrotate(t);
 f->bcnt = t->d->maxbcnt ? t->d->maxbcnt : DEFAULTBCNT;
 ata_rw_frameinit(f);
 skb = f->skb;
 for (frag = 0, n = f->bcnt; n > 0; ++frag, n -= m) {
  if (n < PAGE_SIZE)
   m = n;
  else
   m = PAGE_SIZE;
  skb_fill_page_desc(skb, frag, empty_page, 0, m);
 }
 skb->len += f->bcnt;
 skb->data_len = f->bcnt;
 skb->truesize += f->bcnt;

 skb = skb_clone(f->skb, GFP_ATOMIC);
 if (skb) {
  do_gettimeofday(&f->sent);
  f->sent_jiffs = (u32) jiffies;
  __skb_queue_head_init(&queue);
  __skb_queue_tail(&queue, skb);
  aoenet_xmit(&queue);
 }
}
