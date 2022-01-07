
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_ring** tx_ring; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int ixgbe_xmit_frame_ring (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t ixgbe_xmit_frame(struct sk_buff *skb,
        struct net_device *netdev)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_ring *tx_ring;





 if (unlikely(skb->len < 17)) {
  if (skb_pad(skb, 17 - skb->len))
   return NETDEV_TX_OK;
  skb->len = 17;
  skb_set_tail_pointer(skb, 17);
 }

 tx_ring = adapter->tx_ring[skb->queue_mapping];
 return ixgbe_xmit_frame_ring(skb, adapter, tx_ring);
}
