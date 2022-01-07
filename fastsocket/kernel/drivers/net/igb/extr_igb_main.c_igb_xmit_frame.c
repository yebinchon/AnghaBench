
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
struct igb_adapter {int state; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int __IGB_DOWN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int igb_tx_queue_mapping (struct igb_adapter*,struct sk_buff*) ;
 int igb_xmit_frame_ring (struct sk_buff*,int ) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t igb_xmit_frame(struct sk_buff *skb,
      struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);

 if (test_bit(__IGB_DOWN, &adapter->state)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (skb->len <= 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }




 if (unlikely(skb->len < 17)) {
  if (skb_pad(skb, 17 - skb->len))
   return NETDEV_TX_OK;
  skb->len = 17;
  skb_set_tail_pointer(skb, 17);
 }

 return igb_xmit_frame_ring(skb, igb_tx_queue_mapping(adapter, skb));
}
