
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_group {int dummy; } ;
struct sk_buff {int ip_summed; scalar_t__ data_len; int truesize; scalar_t__ len; } ;
struct TYPE_4__ {int rx_cso; int pkts; int lro_merged; int lro_pkts; int vlan_ex; int rx_drops; } ;
struct TYPE_3__ {int napi; int netdev; int idx; } ;
struct sge_eth_rxq {TYPE_2__ stats; TYPE_1__ rspq; } ;
struct port_info {struct vlan_group* vlan_grp; } ;
struct pkt_gl {scalar_t__ tot_len; } ;
struct cpl_rx_pkt {int vlan_ex; int vlan; } ;
typedef scalar_t__ gro_result_t ;


 int CHECKSUM_UNNECESSARY ;
 scalar_t__ GRO_HELD ;
 scalar_t__ GRO_MERGED ;
 scalar_t__ GRO_MERGED_FREE ;
 scalar_t__ RX_PKT_PAD ;
 int copy_frags (int ,struct pkt_gl const*,scalar_t__) ;
 scalar_t__ likely (struct vlan_group*) ;
 struct sk_buff* napi_get_frags (int *) ;
 scalar_t__ napi_gro_frags_gr (int *) ;
 struct port_info* netdev_priv (int ) ;
 int ntohs (int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_shinfo (struct sk_buff*) ;
 int t4_pktgl_free (struct pkt_gl const*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlan_gro_frags_gr (int *,struct vlan_group*,int ) ;

__attribute__((used)) static void do_gro(struct sge_eth_rxq *rxq, const struct pkt_gl *gl,
     const struct cpl_rx_pkt *pkt)
{
 gro_result_t ret;
 struct sk_buff *skb;

 skb = napi_get_frags(&rxq->rspq.napi);
 if (unlikely(!skb)) {
  t4_pktgl_free(gl);
  rxq->stats.rx_drops++;
  return;
 }

 copy_frags(skb_shinfo(skb), gl, RX_PKT_PAD);
 skb->len = gl->tot_len - RX_PKT_PAD;
 skb->data_len = skb->len;
 skb->truesize += skb->data_len;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb_record_rx_queue(skb, rxq->rspq.idx);

 if (unlikely(pkt->vlan_ex)) {
  struct port_info *pi = netdev_priv(rxq->rspq.netdev);
  struct vlan_group *grp = pi->vlan_grp;

  rxq->stats.vlan_ex++;
  if (likely(grp)) {
   ret = vlan_gro_frags_gr(&rxq->rspq.napi, grp,
      ntohs(pkt->vlan));
   goto stats;
  }
 }
 ret = napi_gro_frags_gr(&rxq->rspq.napi);
stats: if (ret == GRO_HELD)
  rxq->stats.lro_pkts++;
 else if (ret == GRO_MERGED || ret == GRO_MERGED_FREE)
  rxq->stats.lro_merged++;
 rxq->stats.pkts++;
 rxq->stats.rx_cso++;
}
