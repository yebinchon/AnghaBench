
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct l2t_skb_cb {int handle; int (* arp_err_handler ) (int ,struct sk_buff*) ;} ;
struct adapter {int dummy; } ;


 struct l2t_skb_cb* L2T_SKB_CB (struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*) ;
 int t4_ofld_send (struct adapter*,struct sk_buff*) ;

__attribute__((used)) static void handle_failed_resolution(struct adapter *adap, struct sk_buff *arpq)
{
 while (arpq) {
  struct sk_buff *skb = arpq;
  const struct l2t_skb_cb *cb = L2T_SKB_CB(skb);

  arpq = skb->next;
  skb->next = ((void*)0);
  if (cb->arp_err_handler)
   cb->arp_err_handler(cb->handle, skb);
  else
   t4_ofld_send(adap, skb);
 }
}
