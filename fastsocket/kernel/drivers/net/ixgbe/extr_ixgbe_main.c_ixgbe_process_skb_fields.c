
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct net_device {int features; } ;
struct ixgbe_ring {int queue_index; struct net_device* netdev; } ;


 int IXGBE_RXD_STAT_VP ;
 int NETIF_F_HW_VLAN_RX ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ixgbe_ptp_rx_hwtstamp (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbe_rx_checksum (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbe_rx_hash (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int ixgbe_update_rsc_stats (struct ixgbe_ring*,struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static void ixgbe_process_skb_fields(struct ixgbe_ring *rx_ring,
         union ixgbe_adv_rx_desc *rx_desc,
         struct sk_buff *skb)
{
 struct net_device *dev = rx_ring->netdev;

 ixgbe_update_rsc_stats(rx_ring, skb);

 ixgbe_rx_hash(rx_ring, rx_desc, skb);

 ixgbe_rx_checksum(rx_ring, rx_desc, skb);





 if ((dev->features & NETIF_F_HW_VLAN_RX) &&
     ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_VP)) {
  u16 vid = le16_to_cpu(rx_desc->wb.upper.vlan);
  __vlan_hwaccel_put_tag(skb, vid);
 }

 skb_record_rx_queue(skb, rx_ring->queue_index);

 skb->protocol = eth_type_trans(skb, dev);
}
