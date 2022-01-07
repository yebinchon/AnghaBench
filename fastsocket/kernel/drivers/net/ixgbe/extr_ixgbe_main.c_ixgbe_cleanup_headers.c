
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int len; } ;
struct ixgbe_ring {int dummy; } ;


 int IXGBE_RXDADV_ERR_FRAME_ERR_MASK ;
 int __skb_put (struct sk_buff*,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ixgbe_pull_tail (struct ixgbe_ring*,struct sk_buff*) ;
 scalar_t__ ixgbe_rx_is_fcoe (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 scalar_t__ skb_is_nonlinear (struct sk_buff*) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
      union ixgbe_adv_rx_desc *rx_desc,
      struct sk_buff *skb)
{

 if (unlikely(ixgbe_test_staterr(rx_desc,
     IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
  dev_kfree_skb_any(skb);
  return 1;
 }


 if (skb_is_nonlinear(skb))
  ixgbe_pull_tail(rx_ring, skb);
 if (unlikely(skb->len < 60)) {
  int pad_len = 60 - skb->len;

  if (skb_pad(skb, pad_len))
   return 1;
  __skb_put(skb, pad_len);
 }

 return 0;
}
