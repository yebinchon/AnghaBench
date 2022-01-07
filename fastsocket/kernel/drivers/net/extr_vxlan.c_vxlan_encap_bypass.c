
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vxlan_stats {int syncp; int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct vxlan_dev {int flags; TYPE_2__* dev; int stats; } ;
struct sk_buff {TYPE_2__* dev; scalar_t__ len; scalar_t__ encapsulation; int pkt_type; } ;
struct TYPE_6__ {int h_source; } ;
struct TYPE_4__ {int rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int INADDR_LOOPBACK ;
 scalar_t__ NET_RX_SUCCESS ;
 int PACKET_HOST ;
 int VXLAN_F_LEARN ;
 int __skb_pull (struct sk_buff*,int ) ;
 TYPE_3__* eth_hdr (struct sk_buff*) ;
 int htonl (int ) ;
 scalar_t__ netif_rx (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 struct vxlan_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int vxlan_snoop (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void vxlan_encap_bypass(struct sk_buff *skb, struct vxlan_dev *src_vxlan,
          struct vxlan_dev *dst_vxlan)
{
 struct vxlan_stats *tx_stats = this_cpu_ptr(src_vxlan->stats);
 struct vxlan_stats *rx_stats = this_cpu_ptr(dst_vxlan->stats);

 skb->pkt_type = PACKET_HOST;
 skb->encapsulation = 0;
 skb->dev = dst_vxlan->dev;
 __skb_pull(skb, skb_network_offset(skb));

 if (dst_vxlan->flags & VXLAN_F_LEARN)
  vxlan_snoop(skb->dev, htonl(INADDR_LOOPBACK),
       eth_hdr(skb)->h_source);

 u64_stats_update_begin(&tx_stats->syncp);
 tx_stats->tx_packets++;
 tx_stats->tx_bytes += skb->len;
 u64_stats_update_end(&tx_stats->syncp);

 if (netif_rx(skb) == NET_RX_SUCCESS) {
  u64_stats_update_begin(&rx_stats->syncp);
  rx_stats->rx_packets++;
  rx_stats->rx_bytes += skb->len;
  u64_stats_update_end(&rx_stats->syncp);
 } else {
  skb->dev->stats.rx_dropped++;
 }
}
