
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union skb_shared_tx {int in_progress; int hardware; } ;
typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct igb_tx_buffer {int dummy; } ;
struct igb_ring {size_t next_to_use; struct igb_tx_buffer* tx_buffer_info; int netdev; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct igb_adapter {int ptp_tx_work; TYPE_3__ hw; int ptp_tx_start; scalar_t__ ptp_tx_skb; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ __be16 ;
struct TYPE_8__ {unsigned short nr_frags; TYPE_1__* frags; } ;
struct TYPE_5__ {int size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ DESC_NEEDED ;
 int ETH_P_IP ;
 int IGB_MAX_DATA_PER_TXD ;
 int IGB_TX_FLAGS_CSUM ;
 int IGB_TX_FLAGS_IPV4 ;
 int IGB_TX_FLAGS_TSO ;
 int IGB_TX_FLAGS_TSTAMP ;
 int IGB_TX_FLAGS_VLAN ;
 int IGB_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int PAGE_SIZE ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ e1000_82576 ;
 int get_order (int) ;
 scalar_t__ htons (int ) ;
 scalar_t__ igb_maybe_stop_tx (struct igb_ring*,scalar_t__) ;
 int igb_tso (struct igb_ring*,struct sk_buff*,int,scalar_t__,int *) ;
 scalar_t__ igb_tx_csum (struct igb_ring*,struct sk_buff*,int,scalar_t__) ;
 int igb_tx_map (struct igb_ring*,struct sk_buff*,struct igb_tx_buffer*,int,int ) ;
 int jiffies ;
 struct igb_adapter* netdev_priv (int ) ;
 int schedule_work (int *) ;
 scalar_t__ skb_get (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 union skb_shared_tx* skb_tx (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlan_get_protocol (struct sk_buff*) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
    struct igb_ring *tx_ring)
{
 union skb_shared_tx *shtx = skb_tx(skb);
 struct igb_tx_buffer *first;
 int tso;
 u32 tx_flags = 0;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 __be16 protocol = vlan_get_protocol(skb);
 u8 hdr_len = 0;







 if ((PAGE_SIZE << get_order(32768)) > IGB_MAX_DATA_PER_TXD) {
  unsigned short f;
  for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
   count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size);
 } else {
  count += skb_shinfo(skb)->nr_frags;
 }

 if (igb_maybe_stop_tx(tx_ring, count + 3)) {

  return NETDEV_TX_BUSY;
 }

 if (unlikely(shtx->hardware)) {
  struct igb_adapter *adapter = netdev_priv(tx_ring->netdev);

  if (!(adapter->ptp_tx_skb)) {
   shtx->in_progress = 1;
   tx_flags |= IGB_TX_FLAGS_TSTAMP;

   adapter->ptp_tx_skb = skb_get(skb);
   adapter->ptp_tx_start = jiffies;
   if (adapter->hw.mac.type == e1000_82576)
    schedule_work(&adapter->ptp_tx_work);
  }
 }

 if (vlan_tx_tag_present(skb)) {
  tx_flags |= IGB_TX_FLAGS_VLAN;
  tx_flags |= (vlan_tx_tag_get(skb) << IGB_TX_FLAGS_VLAN_SHIFT);
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];

 skb_tx_timestamp(skb);

 tso = igb_tso(tx_ring, skb, tx_flags, protocol, &hdr_len);
 if (tso < 0) {
  goto out_drop;
 } else if (tso) {
  tx_flags |= IGB_TX_FLAGS_TSO | IGB_TX_FLAGS_CSUM;
  if (protocol == htons(ETH_P_IP))
   tx_flags |= IGB_TX_FLAGS_IPV4;
 } else if (igb_tx_csum(tx_ring, skb, tx_flags, protocol) &&
     (skb->ip_summed == CHECKSUM_PARTIAL)) {
  tx_flags |= IGB_TX_FLAGS_CSUM;
 }

 igb_tx_map(tx_ring, skb, first, tx_flags, hdr_len);


 igb_maybe_stop_tx(tx_ring, DESC_NEEDED);

 return NETDEV_TX_OK;

out_drop:
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
