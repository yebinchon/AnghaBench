
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vlan_group {int dummy; } ;
struct sk_buff {int dev; int ip_summed; int protocol; scalar_t__ data; } ;
struct sge_rspq {int polling; } ;
struct sge_qset {int napi; int * port_stats; } ;
struct TYPE_4__ {int flags; } ;
struct port_info {int rx_offload; size_t first_qset; TYPE_2__ iscsic; struct vlan_group* vlan_grp; } ;
struct cpl_rx_pkt {size_t iff; scalar_t__ csum; int vlan; int vlan_valid; int fragment; scalar_t__ csum_valid; } ;
struct TYPE_3__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; int * port; } ;


 int CHECKSUM_UNNECESSARY ;
 size_t SGE_PSTAT_RX_CSUM_GOOD ;
 size_t SGE_PSTAT_VLANEX ;
 int T3_RX_CSUM ;
 unsigned short VLAN_VID_MASK ;
 int __vlan_hwaccel_rx (struct sk_buff*,struct vlan_group*,unsigned short,int ) ;
 int cxgb3_process_iscsi_prov_pack (struct port_info*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ htons (int) ;
 scalar_t__ likely (struct vlan_group*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct port_info* netdev_priv (int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netif_rx (struct sk_buff*) ;
 unsigned short ntohs (int ) ;
 struct sge_qset* rspq_to_qset (struct sge_rspq*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlan_gro_receive (int *,struct vlan_group*,unsigned short,struct sk_buff*) ;
 int vlan_group_get_device (struct vlan_group*,unsigned short) ;

__attribute__((used)) static void rx_eth(struct adapter *adap, struct sge_rspq *rq,
     struct sk_buff *skb, int pad, int lro)
{
 struct cpl_rx_pkt *p = (struct cpl_rx_pkt *)(skb->data + pad);
 struct sge_qset *qs = rspq_to_qset(rq);
 struct port_info *pi;

 skb_pull(skb, sizeof(*p) + pad);
 skb->protocol = eth_type_trans(skb, adap->port[p->iff]);
 pi = netdev_priv(skb->dev);
 if ((pi->rx_offload & T3_RX_CSUM) && p->csum_valid &&
     p->csum == htons(0xffff) && !p->fragment) {
  qs->port_stats[SGE_PSTAT_RX_CSUM_GOOD]++;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else
  skb_checksum_none_assert(skb);
 skb_record_rx_queue(skb, qs - &adap->sge.qs[pi->first_qset]);

 if (unlikely(p->vlan_valid)) {
  struct vlan_group *grp = pi->vlan_grp;

  qs->port_stats[SGE_PSTAT_VLANEX]++;
  if (likely(grp))
   if (lro)
    vlan_gro_receive(&qs->napi, grp,
       ntohs(p->vlan), skb);
   else {
    if (unlikely(pi->iscsic.flags)) {
     unsigned short vtag = ntohs(p->vlan) &
        VLAN_VID_MASK;
     skb->dev = vlan_group_get_device(grp,
          vtag);
     cxgb3_process_iscsi_prov_pack(pi, skb);
    }
    __vlan_hwaccel_rx(skb, grp, ntohs(p->vlan),
          rq->polling);
   }
  else
   dev_kfree_skb_any(skb);
 } else if (rq->polling) {
  if (lro)
   napi_gro_receive(&qs->napi, skb);
  else {
   if (unlikely(pi->iscsic.flags))
    cxgb3_process_iscsi_prov_pack(pi, skb);
   netif_receive_skb(skb);
  }
 } else
  netif_rx(skb);
}
