
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct ppp_channel {struct channel* ppp; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_4__ {int rwait; TYPE_2__ rq; } ;
struct channel {int upl; int ppp; TYPE_1__ file; } ;


 int PPP_CCPFRAG ;
 scalar_t__ PPP_MAX_RQLEN ;
 int PPP_PROTO (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_do_recv (int ,struct sk_buff*,struct channel*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct sk_buff* skb_dequeue (TYPE_2__*) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int wake_up_interruptible (int *) ;

void
ppp_input(struct ppp_channel *chan, struct sk_buff *skb)
{
 struct channel *pch = chan->ppp;
 int proto;

 if (!pch || skb->len == 0) {
  kfree_skb(skb);
  return;
 }

 proto = PPP_PROTO(skb);
 read_lock_bh(&pch->upl);
 if (!pch->ppp || proto >= 0xc000 || proto == PPP_CCPFRAG) {

  skb_queue_tail(&pch->file.rq, skb);

  while (pch->file.rq.qlen > PPP_MAX_RQLEN
         && (skb = skb_dequeue(&pch->file.rq)))
   kfree_skb(skb);
  wake_up_interruptible(&pch->file.rwait);
 } else {
  ppp_do_recv(pch->ppp, skb, pch);
 }
 read_unlock_bh(&pch->upl);
}
