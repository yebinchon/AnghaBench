
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ protocol; int len; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ring {unsigned int next_to_use; scalar_t__ tail; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; scalar_t__ vlgrp; int tx_busy; struct ixgbevf_ring* tx_ring; } ;
struct TYPE_4__ {unsigned short nr_frags; int * frags; } ;


 scalar_t__ DESC_NEEDED ;
 int ETH_P_IP ;
 unsigned int IXGBE_TX_FLAGS_CSUM ;
 unsigned int IXGBE_TX_FLAGS_IPV4 ;
 unsigned int IXGBE_TX_FLAGS_TSO ;
 unsigned int IXGBE_TX_FLAGS_VLAN ;
 unsigned int IXGBE_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ is_link_local_ether_addr (int *) ;
 scalar_t__ ixgbevf_maybe_stop_tx (struct ixgbevf_ring*,scalar_t__) ;
 int ixgbevf_tso (struct ixgbevf_ring*,struct sk_buff*,unsigned int,int *) ;
 scalar_t__ ixgbevf_tx_csum (struct ixgbevf_ring*,struct sk_buff*,unsigned int) ;
 int ixgbevf_tx_map (struct ixgbevf_ring*,struct sk_buff*,unsigned int) ;
 int ixgbevf_tx_queue (struct ixgbevf_ring*,unsigned int,int ,unsigned int,int ,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int skb_frag_size (int *) ;
 int * skb_header_pointer (struct sk_buff*,int ,int ,int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 unsigned int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ixgbevf_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbevf_ring *tx_ring;
 unsigned int first;
 unsigned int tx_flags = 0;
 u8 hdr_len = 0;
 int r_idx = 0, tso;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));



 u8 *dst_mac = skb_header_pointer(skb, 0, 0, ((void*)0));
 if (!dst_mac || is_link_local_ether_addr(dst_mac)) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 tx_ring = &adapter->tx_ring[r_idx];
 count += skb_shinfo(skb)->nr_frags;

 if (ixgbevf_maybe_stop_tx(tx_ring, count + 3)) {
  adapter->tx_busy++;
  return NETDEV_TX_BUSY;
 }

 if (adapter->vlgrp && vlan_tx_tag_present(skb)) {
  tx_flags |= vlan_tx_tag_get(skb);
  tx_flags <<= IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_VLAN;
 }

 first = tx_ring->next_to_use;

 if (skb->protocol == htons(ETH_P_IP))
  tx_flags |= IXGBE_TX_FLAGS_IPV4;
 tso = ixgbevf_tso(tx_ring, skb, tx_flags, &hdr_len);
 if (tso < 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (tso)
  tx_flags |= IXGBE_TX_FLAGS_TSO | IXGBE_TX_FLAGS_CSUM;
 else if (ixgbevf_tx_csum(tx_ring, skb, tx_flags))
  tx_flags |= IXGBE_TX_FLAGS_CSUM;

 ixgbevf_tx_queue(tx_ring, tx_flags,
    ixgbevf_tx_map(tx_ring, skb, tx_flags),
    first, skb->len, hdr_len);

 writel(tx_ring->next_to_use, adapter->hw.hw_addr + tx_ring->tail);

 ixgbevf_maybe_stop_tx(tx_ring, DESC_NEEDED);

 return NETDEV_TX_OK;
}
