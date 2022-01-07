
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__* data; scalar_t__ protocol; int ip_summed; } ;
struct sge_port_stats {int vlan_xtract; int rx_cso_good; } ;
struct TYPE_4__ {int rx_drops; } ;
struct sge {int * port_stats; TYPE_1__ stats; scalar_t__ rx_pkt_pad; struct adapter* adapter; } ;
struct freelQ {int dummy; } ;
struct cpl_rx_pkt {size_t iff; int csum; int vlan; scalar_t__ vlan_valid; } ;
struct TYPE_5__ {size_t nports; } ;
struct adapter {int flags; int vlan_grp; TYPE_3__* port; TYPE_2__ params; int pdev; } ;
struct TYPE_6__ {int dev; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int RX_CSUM_ENABLED ;
 int __skb_pull (struct sk_buff*,int) ;
 scalar_t__ eth_type_trans (struct sk_buff*,int ) ;
 struct sk_buff* get_packet (int ,struct freelQ*,scalar_t__) ;
 scalar_t__ htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int ntohs (int ) ;
 struct sge_port_stats* per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int ) ;

__attribute__((used)) static void sge_rx(struct sge *sge, struct freelQ *fl, unsigned int len)
{
 struct sk_buff *skb;
 const struct cpl_rx_pkt *p;
 struct adapter *adapter = sge->adapter;
 struct sge_port_stats *st;

 skb = get_packet(adapter->pdev, fl, len - sge->rx_pkt_pad);
 if (unlikely(!skb)) {
  sge->stats.rx_drops++;
  return;
 }

 p = (const struct cpl_rx_pkt *) skb->data;
 if (p->iff >= adapter->params.nports) {
  kfree_skb(skb);
  return;
 }
 __skb_pull(skb, sizeof(*p));

 st = per_cpu_ptr(sge->port_stats[p->iff], smp_processor_id());

 skb->protocol = eth_type_trans(skb, adapter->port[p->iff].dev);
 if ((adapter->flags & RX_CSUM_ENABLED) && p->csum == 0xffff &&
     skb->protocol == htons(ETH_P_IP) &&
     (skb->data[9] == IPPROTO_TCP || skb->data[9] == IPPROTO_UDP)) {
  ++st->rx_cso_good;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else
  skb->ip_summed = CHECKSUM_NONE;

 if (unlikely(adapter->vlan_grp && p->vlan_valid)) {
  st->vlan_xtract++;
  vlan_hwaccel_receive_skb(skb, adapter->vlan_grp,
      ntohs(p->vlan));
 } else
  netif_receive_skb(skb);
}
