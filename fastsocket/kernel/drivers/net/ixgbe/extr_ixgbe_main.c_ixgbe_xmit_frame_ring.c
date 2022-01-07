
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; int h_vlan_TCI; } ;
struct vlan_ethhdr {int h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; int len; } ;
struct ixgbe_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; scalar_t__ protocol; int bytecount; } ;
struct TYPE_7__ {int tx_busy; } ;
struct ixgbe_ring {size_t next_to_use; int state; TYPE_3__* netdev; struct ixgbe_tx_buffer* tx_buffer_info; TYPE_2__ tx_stats; } ;
struct ixgbe_adapter {int flags; int ptp_tx_work; int ptp_tx_start; int ptp_tx_skb; } ;
typedef int netdev_tx_t ;
typedef int _vhdr ;
typedef scalar_t__ __be16 ;
struct TYPE_10__ {unsigned short nr_frags; TYPE_1__* frags; } ;
struct TYPE_9__ {int in_progress; int hardware; } ;
struct TYPE_8__ {int features; } ;
struct TYPE_6__ {int size; } ;


 scalar_t__ DESC_NEEDED ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_FCOE ;
 int GFP_ATOMIC ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_TX_FLAGS_CC ;
 int IXGBE_TX_FLAGS_HW_VLAN ;
 int IXGBE_TX_FLAGS_SW_VLAN ;
 int IXGBE_TX_FLAGS_TSTAMP ;
 int IXGBE_TX_FLAGS_VLAN_PRIO_MASK ;
 int IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT ;
 int IXGBE_TX_FLAGS_VLAN_SHIFT ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NETIF_F_FCOE_CRC ;
 int NETIF_F_FSO ;
 int TC_PRIO_CONTROL ;
 scalar_t__ TXD_USE_COUNT (int ) ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 scalar_t__ __constant_htons (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int htons (int) ;
 int ixgbe_atr (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ;
 int ixgbe_fso (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int *) ;
 scalar_t__ ixgbe_maybe_stop_tx (struct ixgbe_ring*,scalar_t__) ;
 int ixgbe_tso (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int *) ;
 int ixgbe_tx_csum (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ;
 int ixgbe_tx_map (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int ) ;
 int jiffies ;
 int ntohs (int ) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 int schedule_work (int *) ;
 int skb_get (struct sk_buff*) ;
 scalar_t__ skb_header_cloned (struct sk_buff*) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff*,int ,int,struct vlan_hdr*) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 TYPE_4__* skb_tx (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;

netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
     struct ixgbe_adapter *adapter,
     struct ixgbe_ring *tx_ring)
{
 struct ixgbe_tx_buffer *first;
 int tso;
 u32 tx_flags = 0;
 unsigned short f;
 u16 count = TXD_USE_COUNT(skb_headlen(skb));
 __be16 protocol = skb->protocol;
 u8 hdr_len = 0;
 for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
  count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size);

 if (ixgbe_maybe_stop_tx(tx_ring, count + 3)) {
  tx_ring->tx_stats.tx_busy++;
  return NETDEV_TX_BUSY;
 }


 first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
 first->skb = skb;
 first->bytecount = skb->len;
 first->gso_segs = 1;


 if (vlan_tx_tag_present(skb)) {
  tx_flags |= vlan_tx_tag_get(skb) << IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;

 } else if (protocol == __constant_htons(ETH_P_8021Q)) {
  struct vlan_hdr *vhdr, _vhdr;
  vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
  if (!vhdr)
   goto out_drop;

  protocol = vhdr->h_vlan_encapsulated_proto;
  tx_flags |= ntohs(vhdr->h_vlan_TCI) <<
      IXGBE_TX_FLAGS_VLAN_SHIFT;
  tx_flags |= IXGBE_TX_FLAGS_SW_VLAN;
 }

 skb_tx_timestamp(skb);
 if ((adapter->flags & IXGBE_FLAG_DCB_ENABLED) &&
     ((tx_flags & (IXGBE_TX_FLAGS_HW_VLAN | IXGBE_TX_FLAGS_SW_VLAN)) ||
      (skb->priority != TC_PRIO_CONTROL))) {
  tx_flags &= ~IXGBE_TX_FLAGS_VLAN_PRIO_MASK;
  tx_flags |= (skb->priority & 0x7) <<
     IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT;
  if (tx_flags & IXGBE_TX_FLAGS_SW_VLAN) {
   struct vlan_ethhdr *vhdr;
   if (skb_header_cloned(skb) &&
       pskb_expand_head(skb, 0, 0, GFP_ATOMIC))
    goto out_drop;
   vhdr = (struct vlan_ethhdr *)skb->data;
   vhdr->h_vlan_TCI = htons(tx_flags >>
       IXGBE_TX_FLAGS_VLAN_SHIFT);
  } else {
   tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
  }
 }


 first->tx_flags = tx_flags;
 first->protocol = protocol;
 tso = ixgbe_tso(tx_ring, first, &hdr_len);
 if (tso < 0)
  goto out_drop;
 else if (!tso)
  ixgbe_tx_csum(tx_ring, first);


 if (test_bit(__IXGBE_TX_FDIR_INIT_DONE, &tx_ring->state))
  ixgbe_atr(tx_ring, first);




 ixgbe_tx_map(tx_ring, first, hdr_len);

 ixgbe_maybe_stop_tx(tx_ring, DESC_NEEDED);

 return NETDEV_TX_OK;

out_drop:
 dev_kfree_skb_any(first->skb);
 first->skb = ((void*)0);

 return NETDEV_TX_OK;
}
