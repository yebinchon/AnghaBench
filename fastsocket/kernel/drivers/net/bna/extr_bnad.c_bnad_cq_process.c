
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; } ;
struct bnad_rx_unmap_q {int type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {int dummy; } ;
struct bnad_rx_ctrl {int napi; } ;
struct bnad {int vlan_grp; scalar_t__ rx_csum; int netdev; } ;
struct bna_rcb {size_t consumer_index; int flags; int q_depth; TYPE_1__* rxq; struct bnad_rx_unmap_q* unmap_q; } ;
struct bna_pkt_rate {int dummy; } ;
struct bna_cq_entry {scalar_t__ valid; int vlan_tag; int rxq_id; int length; int flags; } ;
struct bna_ccb {size_t producer_index; struct bna_rcb** rcb; int i_dbell; int q_depth; struct bnad_rx_ctrl* ctrl; struct bna_cq_entry* sw_q; struct bna_pkt_rate pkt_rate; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_packets_with_error; } ;


 scalar_t__ BNAD_RXBUF_IS_PAGE (int ) ;
 int BNAD_RXQ_STARTED ;
 int BNA_CQ_EF_FCS_ERROR ;
 int BNA_CQ_EF_MAC_ERROR ;
 int BNA_CQ_EF_TOO_LONG ;
 int BNA_CQ_EF_VLAN ;
 int BNA_QE_INDX_INC (size_t,int ) ;
 int BNA_UPDATE_PKT_CNT (struct bna_pkt_rate*,int) ;
 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int bna_ib_ack_disable_irq (int ,int) ;
 scalar_t__ bna_is_small_rxq (int ) ;
 struct sk_buff* bnad_cq_prepare_skb (struct bnad_rx_ctrl*,struct bnad_rx_unmap_q*,struct bnad_rx_unmap*,int,int) ;
 int bnad_rxq_cleanup_page (struct bnad*,struct bnad_rx_unmap*) ;
 int bnad_rxq_cleanup_skb (struct bnad*,struct bnad_rx_unmap*) ;
 int bnad_rxq_post (struct bnad*,struct bna_rcb*) ;
 int flags_cksum_prot_mask ;
 int flags_tcp4 ;
 int flags_tcp6 ;
 int flags_udp4 ;
 int flags_udp6 ;
 scalar_t__ likely (int) ;
 int napi_gro_flush (int *) ;
 int napi_gro_frags (int *) ;
 int netif_receive_skb (struct sk_buff*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int prefetch (int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_frags (int *,int ,int) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,int) ;

__attribute__((used)) static u32
bnad_cq_process(struct bnad *bnad, struct bna_ccb *ccb, int budget)
{
 struct bna_cq_entry *cq, *cmpl;
 struct bna_rcb *rcb = ((void*)0);
 struct bnad_rx_unmap_q *unmap_q;
 struct bnad_rx_unmap *unmap;
 struct sk_buff *skb;
 struct bna_pkt_rate *pkt_rt = &ccb->pkt_rate;
 struct bnad_rx_ctrl *rx_ctrl = ccb->ctrl;
 u32 packets = 0, length = 0, flags, masked_flags;

 prefetch(bnad->netdev);

 cq = ccb->sw_q;
 cmpl = &cq[ccb->producer_index];

 while (cmpl->valid && (packets < budget)) {
  packets++;
  flags = ntohl(cmpl->flags);
  length = ntohs(cmpl->length);
  BNA_UPDATE_PKT_CNT(pkt_rt, ntohs(cmpl->length));

  if (bna_is_small_rxq(cmpl->rxq_id))
   rcb = ccb->rcb[1];
  else
   rcb = ccb->rcb[0];

  unmap_q = rcb->unmap_q;
  unmap = &unmap_q->unmap[rcb->consumer_index];

  if (unlikely(flags & (BNA_CQ_EF_MAC_ERROR |
     BNA_CQ_EF_FCS_ERROR |
     BNA_CQ_EF_TOO_LONG))) {
   if (BNAD_RXBUF_IS_PAGE(unmap_q->type))
    bnad_rxq_cleanup_page(bnad, unmap);
   else
    bnad_rxq_cleanup_skb(bnad, unmap);

   rcb->rxq->rx_packets_with_error++;
   goto next;
  }

  skb = bnad_cq_prepare_skb(ccb->ctrl, unmap_q, unmap,
    length, flags);

  if (unlikely(!skb))
   break;

  masked_flags = flags & flags_cksum_prot_mask;

  if (likely
      (bnad->rx_csum &&
       ((masked_flags == flags_tcp4) ||
        (masked_flags == flags_udp4) ||
        (masked_flags == flags_tcp6) ||
        (masked_flags == flags_udp6))))
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  else
   skb->ip_summed = CHECKSUM_NONE;

  rcb->rxq->rx_packets++;
  rcb->rxq->rx_bytes += length;

  if (flags & BNA_CQ_EF_VLAN) {
   struct bnad_rx_ctrl *rx_ctrl =
    (struct bnad_rx_ctrl *)ccb->ctrl;
   if (BNAD_RXBUF_IS_PAGE(unmap_q->type))
    vlan_gro_frags(&rx_ctrl->napi, bnad->vlan_grp,
            ntohs(cmpl->vlan_tag));
   else
    vlan_hwaccel_receive_skb(skb, bnad->vlan_grp,
        ntohs(cmpl->vlan_tag));

  } else {
   struct bnad_rx_ctrl *rx_ctrl =
    (struct bnad_rx_ctrl *)ccb->ctrl;
   if (BNAD_RXBUF_IS_PAGE(unmap_q->type))
    napi_gro_frags(&rx_ctrl->napi);
   else
    netif_receive_skb(skb);
  }

next:
  cmpl->valid = 0;
  BNA_QE_INDX_INC(rcb->consumer_index, rcb->q_depth);
  BNA_QE_INDX_INC(ccb->producer_index, ccb->q_depth);
  cmpl = &cq[ccb->producer_index];
 }

 napi_gro_flush(&rx_ctrl->napi);
 if (likely(test_bit(BNAD_RXQ_STARTED, &ccb->rcb[0]->flags)))
  bna_ib_ack_disable_irq(ccb->i_dbell, packets);

 bnad_rxq_post(bnad, ccb->rcb[0]);
 if (ccb->rcb[1])
  bnad_rxq_post(bnad, ccb->rcb[1]);

 return packets;
}
