
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int rxhash; int protocol; int ip_summed; } ;
struct net_device {int features; } ;
struct be_rx_obj {struct be_adapter* adapter; } ;
struct be_rx_compl_info {int vlan_tag; scalar_t__ vlanf; int rss_hash; } ;
struct be_adapter {int vlan_grp; struct be_rx_obj* rx_obj; scalar_t__ rx_csum; struct net_device* netdev; } ;
struct TYPE_2__ {int rx_drops_no_skbs; } ;


 int BE_RX_SKB_ALLOC_SIZE ;
 int CHECKSUM_UNNECESSARY ;
 int NETIF_F_RXHASH ;
 int be_rx_compl_discard (struct be_rx_obj*,struct be_rx_compl_info*) ;
 scalar_t__ csum_passed (struct be_rx_compl_info*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 TYPE_1__* rx_stats (struct be_rx_obj*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_fill_rx_data (struct be_rx_obj*,struct sk_buff*,struct be_rx_compl_info*) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void be_rx_compl_process(struct be_rx_obj *rxo,
    struct be_rx_compl_info *rxcp)
{
 struct be_adapter *adapter = rxo->adapter;
 struct net_device *netdev = adapter->netdev;
 struct sk_buff *skb;

 skb = netdev_alloc_skb_ip_align(netdev, BE_RX_SKB_ALLOC_SIZE);
 if (unlikely(!skb)) {
  rx_stats(rxo)->rx_drops_no_skbs++;
  be_rx_compl_discard(rxo, rxcp);
  return;
 }

 skb_fill_rx_data(rxo, skb, rxcp);

 if (likely(adapter->rx_csum && csum_passed(rxcp)))
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 else
  skb_checksum_none_assert(skb);

 skb->protocol = eth_type_trans(skb, netdev);
 skb_record_rx_queue(skb, rxo - &adapter->rx_obj[0]);
 if (netdev->features & NETIF_F_RXHASH)
  skb->rxhash = rxcp->rss_hash;

 if (rxcp->vlanf)
  vlan_hwaccel_receive_skb(skb, adapter->vlan_grp,
     rxcp->vlan_tag);
 else
  netif_receive_skb(skb);
}
