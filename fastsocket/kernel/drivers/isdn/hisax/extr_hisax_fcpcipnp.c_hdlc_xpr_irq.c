
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ truesize; scalar_t__ len; } ;
struct fritz_bcs {struct sk_buff* tx_skb; scalar_t__ tx_cnt; } ;


 int B_L1L2 (struct fritz_bcs*,int,void*) ;
 int CONFIRM ;
 int PH_DATA ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int hdlc_fill_fifo (struct fritz_bcs*) ;

__attribute__((used)) static inline void hdlc_xpr_irq(struct fritz_bcs *bcs)
{
 struct sk_buff *skb;

 skb = bcs->tx_skb;
 if (!skb)
  return;

 if (skb->len) {
  hdlc_fill_fifo(bcs);
  return;
 }
 bcs->tx_cnt = 0;
 bcs->tx_skb = ((void*)0);
 B_L1L2(bcs, PH_DATA | CONFIRM, (void *)(unsigned long)skb->truesize);
 dev_kfree_skb_irq(skb);
}
