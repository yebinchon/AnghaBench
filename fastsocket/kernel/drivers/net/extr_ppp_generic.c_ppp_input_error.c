
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* cb; scalar_t__ len; } ;
struct ppp_channel {struct channel* ppp; } ;
struct channel {int upl; scalar_t__ ppp; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int ppp_do_recv (scalar_t__,struct sk_buff*,struct channel*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void
ppp_input_error(struct ppp_channel *chan, int code)
{
 struct channel *pch = chan->ppp;
 struct sk_buff *skb;

 if (!pch)
  return;

 read_lock_bh(&pch->upl);
 if (pch->ppp) {
  skb = alloc_skb(0, GFP_ATOMIC);
  if (skb) {
   skb->len = 0;
   skb->cb[0] = code;
   ppp_do_recv(pch->ppp, skb, pch);
  }
 }
 read_unlock_bh(&pch->upl);
}
