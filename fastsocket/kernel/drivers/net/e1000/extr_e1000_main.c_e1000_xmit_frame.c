
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u8 ;
struct sk_buff {scalar_t__ len; unsigned int data_len; scalar_t__ ip_summed; scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct e1000_tx_ring {int last_tx_tso; unsigned int next_to_use; TYPE_2__* buffer_info; } ;
struct e1000_hw {int mac_type; scalar_t__ bus_type; } ;
struct e1000_adapter {int fifo_stall_task; int flags; scalar_t__ pcix_82544; struct e1000_tx_ring* tx_ring; struct e1000_hw hw; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {unsigned int gso_size; unsigned int nr_frags; TYPE_1__* frags; } ;
struct TYPE_5__ {scalar_t__ time_stamp; } ;
struct TYPE_4__ {unsigned int size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int E1000_MAX_DATA_PER_TXD ;
 unsigned int E1000_MAX_TXD_PWR ;
 unsigned int E1000_TX_FLAGS_CSUM ;
 unsigned int E1000_TX_FLAGS_IPV4 ;
 unsigned int E1000_TX_FLAGS_TSO ;
 unsigned int E1000_TX_FLAGS_VLAN ;
 unsigned int E1000_TX_FLAGS_VLAN_SHIFT ;
 int ETH_P_IP ;
 int MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ TXD_USE_COUNT (unsigned int,unsigned int) ;
 int __E1000_DOWN ;
 int __pskb_pull_tail (struct sk_buff*,unsigned int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int drv ;

 int e1000_82547 ;
 scalar_t__ e1000_82547_fifo_workaround (struct e1000_adapter*,struct sk_buff*) ;
 scalar_t__ e1000_bus_type_pcix ;
 int e1000_maybe_stop_tx (struct net_device*,struct e1000_tx_ring*,int) ;
 int e1000_tso (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*) ;
 int e1000_tx_csum (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*) ;
 int e1000_tx_map (struct e1000_adapter*,struct e1000_tx_ring*,struct sk_buff*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int e1000_tx_queue (struct e1000_adapter*,struct e1000_tx_ring*,unsigned int,int) ;
 int e_err (int ,char*) ;
 int fls (unsigned int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ likely (int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_delayed_work (int *,int) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 unsigned int vlan_tx_tag_get (struct sk_buff*) ;
 int vlan_tx_tag_present (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t e1000_xmit_frame(struct sk_buff *skb,
        struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_tx_ring *tx_ring;
 unsigned int first, max_per_txd = E1000_MAX_DATA_PER_TXD;
 unsigned int max_txd_pwr = E1000_MAX_TXD_PWR;
 unsigned int tx_flags = 0;
 unsigned int len = skb_headlen(skb);
 unsigned int nr_frags;
 unsigned int mss;
 int count = 0;
 int tso;
 unsigned int f;





 tx_ring = adapter->tx_ring;

 if (unlikely(skb->len <= 0)) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 mss = skb_shinfo(skb)->gso_size;






 if (mss) {
  u8 hdr_len;
  max_per_txd = min(mss << 2, max_per_txd);
  max_txd_pwr = fls(max_per_txd) - 1;

  hdr_len = skb_transport_offset(skb) + tcp_hdrlen(skb);
  if (skb->data_len && hdr_len == len) {
   switch (hw->mac_type) {
    unsigned int pull_size;
   case 128:






    if ((unsigned long)(skb_tail_pointer(skb) - 1) & 4)
     break;

    pull_size = min((unsigned int)4, skb->data_len);
    if (!__pskb_pull_tail(skb, pull_size)) {
     e_err(drv, "__pskb_pull_tail "
           "failed.\n");
     dev_kfree_skb_any(skb);
     return NETDEV_TX_OK;
    }
    len = skb_headlen(skb);
    break;
   default:

    break;
   }
  }
 }


 if ((mss) || (skb->ip_summed == CHECKSUM_PARTIAL))
  count++;
 count++;


 if (!skb->data_len && tx_ring->last_tx_tso && !skb_is_gso(skb))
  count++;

 count += TXD_USE_COUNT(len, max_txd_pwr);

 if (adapter->pcix_82544)
  count++;




 if (unlikely((hw->bus_type == e1000_bus_type_pcix) &&
   (len > 2015)))
  count++;

 nr_frags = skb_shinfo(skb)->nr_frags;
 for (f = 0; f < nr_frags; f++)
  count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size,
           max_txd_pwr);
 if (adapter->pcix_82544)
  count += nr_frags;



 if (unlikely(e1000_maybe_stop_tx(netdev, tx_ring, count + 2)))
  return NETDEV_TX_BUSY;

 if (unlikely((hw->mac_type == e1000_82547) &&
       (e1000_82547_fifo_workaround(adapter, skb)))) {
  netif_stop_queue(netdev);
  if (!test_bit(__E1000_DOWN, &adapter->flags))
   schedule_delayed_work(&adapter->fifo_stall_task, 1);
  return NETDEV_TX_BUSY;
 }

 if (unlikely(vlan_tx_tag_present(skb))) {
  tx_flags |= E1000_TX_FLAGS_VLAN;
  tx_flags |= (vlan_tx_tag_get(skb) << E1000_TX_FLAGS_VLAN_SHIFT);
 }

 first = tx_ring->next_to_use;

 tso = e1000_tso(adapter, tx_ring, skb);
 if (tso < 0) {
  dev_kfree_skb_any(skb);
  return NETDEV_TX_OK;
 }

 if (likely(tso)) {
  if (likely(hw->mac_type != 128))
   tx_ring->last_tx_tso = 1;
  tx_flags |= E1000_TX_FLAGS_TSO;
 } else if (likely(e1000_tx_csum(adapter, tx_ring, skb)))
  tx_flags |= E1000_TX_FLAGS_CSUM;

 if (likely(skb->protocol == htons(ETH_P_IP)))
  tx_flags |= E1000_TX_FLAGS_IPV4;

 count = e1000_tx_map(adapter, tx_ring, skb, first, max_per_txd,
                      nr_frags, mss);

 if (count) {
  e1000_tx_queue(adapter, tx_ring, tx_flags, count);

  e1000_maybe_stop_tx(netdev, tx_ring, MAX_SKB_FRAGS + 2);

 } else {
  dev_kfree_skb_any(skb);
  tx_ring->buffer_info[first].time_stamp = 0;
  tx_ring->next_to_use = first;
 }

 return NETDEV_TX_OK;
}
