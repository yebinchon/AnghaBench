
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int len; } ;
struct igb_ring {int dummy; } ;


 int __skb_put (struct sk_buff*,int) ;
 int igb_pull_tail (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool igb_cleanup_headers(struct igb_ring *rx_ring,
    union e1000_adv_rx_desc *rx_desc,
    struct sk_buff *skb)
{


 if (skb_is_nonlinear(skb))
  igb_pull_tail(rx_ring, rx_desc, skb);


 if (unlikely(skb->len < 60)) {
  int pad_len = 60 - skb->len;

  if (skb_pad(skb, pad_len))
   return 1;
  __skb_put(skb, pad_len);
 }

 return 0;
}
