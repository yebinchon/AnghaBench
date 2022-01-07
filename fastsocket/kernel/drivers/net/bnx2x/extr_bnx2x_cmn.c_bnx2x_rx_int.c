
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct eth_fast_path_rx_cqe {int type_error_flags; size_t queue_index; size_t placement_offset; int vlan_tag; TYPE_2__ pars_flags; int pkt_len_or_gro_seg_len; int rss_hash_result; int status_flags; } ;
struct TYPE_12__ {size_t queue_index; int pkt_len; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; TYPE_5__ end_agg_cqe; } ;
typedef int u8 ;
typedef size_t u16 ;
struct sw_rx_bd {int* data; } ;
struct sk_buff {int rxhash; int protocol; int mac_header; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct bnx2x_fastpath {size_t rx_bd_cons; size_t rx_bd_prod; size_t rx_comp_cons; size_t rx_comp_prod; scalar_t__ mode; int rx_pkt; int rx_calls; int rx_sge_prod; union eth_rx_cqe* rx_comp_ring; int napi; int rx_queue; int rx_buf_size; struct bnx2x_agg_info* tpa_info; scalar_t__ disable_tpa; struct sw_rx_bd* rx_buf_ring; int index; struct bnx2x* bp; } ;
struct bnx2x_agg_info {size_t len_on_bd; size_t full_page; } ;
struct bnx2x {int panic; scalar_t__ rx_mode; int * vlgrp; scalar_t__ rx_csum; TYPE_3__* dev; TYPE_1__* pdev; } ;
typedef enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;
struct TYPE_13__ {int rx_skb_alloc_failed; int rx_err_discard_pkt; } ;
struct TYPE_11__ {scalar_t__ mtu; } ;
struct TYPE_9__ {int dev; } ;


 int BNX2X_ERR (char*,int ) ;
 scalar_t__ BNX2X_IS_CQE_COMPLETED (struct eth_fast_path_rx_cqe*) ;
 scalar_t__ BNX2X_RX_MODE_PROMISC ;
 int BNX2X_SEED_CQE (struct eth_fast_path_rx_cqe*) ;
 int CQE_TYPE (int) ;
 int CQE_TYPE_FAST (int) ;
 int CQE_TYPE_SLOW (int) ;
 scalar_t__ CQE_TYPE_START (int) ;
 scalar_t__ CQE_TYPE_STOP (int) ;
 int DMA_FROM_DEVICE ;
 int DP (int,char*,...) ;
 int ETH_ALEN ;
 int ETH_FAST_PATH_RX_CQE_TYPE ;
 scalar_t__ ETH_MAX_PACKET_SIZE ;
 int ETH_P_8021Q ;
 int ETH_RX_ERROR_FALGS ;
 int GFP_ATOMIC ;
 int NETIF_MSG_RX_ERR ;
 int NETIF_MSG_RX_STATUS ;
 size_t NET_SKB_PAD ;
 size_t NEXT_RCQ_IDX (size_t) ;
 size_t NEXT_RX_IDX (size_t) ;
 int PARSING_FLAGS_VLAN ;
 size_t RCQ_BD (size_t) ;
 size_t RX_BD (size_t) ;
 size_t RX_COPY_THRESH ;
 size_t SGE_PAGE_ALIGN (size_t) ;
 size_t SGE_PAGE_SHIFT ;
 scalar_t__ TPA_MODE_GRO ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ bnx2x_alloc_rx_data (struct bnx2x*,struct bnx2x_fastpath*,size_t,int ) ;
 int bnx2x_csum_validate (struct sk_buff*,union eth_rx_cqe*,struct bnx2x_fastpath*,TYPE_7__*) ;
 TYPE_7__* bnx2x_fp_qstats (struct bnx2x*,struct bnx2x_fastpath*) ;
 int bnx2x_frag_free (struct bnx2x_fastpath*,int*) ;
 int bnx2x_get_rxhash (struct bnx2x*,struct eth_fast_path_rx_cqe*) ;
 int bnx2x_reuse_rx_data (struct bnx2x_fastpath*,size_t,size_t) ;
 int bnx2x_sp_event (struct bnx2x_fastpath*,union eth_rx_cqe*) ;
 int bnx2x_tpa_start (struct bnx2x_fastpath*,size_t,size_t,size_t,struct eth_fast_path_rx_cqe*) ;
 int bnx2x_tpa_stop (struct bnx2x*,struct bnx2x_fastpath*,struct bnx2x_agg_info*,size_t,TYPE_5__*,size_t) ;
 int bnx2x_update_rx_prod (struct bnx2x*,struct bnx2x_fastpath*,size_t,size_t,int ) ;
 int bnx2x_update_sge_prod (struct bnx2x_fastpath*,size_t,TYPE_5__*) ;
 struct sk_buff* build_skb (int*) ;
 int dma_sync_single_for_cpu (int *,int ,size_t,int ) ;
 int dma_unmap_addr (struct sw_rx_bd*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 scalar_t__ htons (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int mapping ;
 int memcpy (scalar_t__,int*,size_t) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (TYPE_3__*,size_t) ;
 int prefetch (int*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,size_t) ;
 scalar_t__ unlikely (int) ;
 int vlan_gro_receive (int *,int *,int,struct sk_buff*) ;

int bnx2x_rx_int(struct bnx2x_fastpath *fp, int budget)
{
 struct bnx2x *bp = fp->bp;
 u16 bd_cons, bd_prod, bd_prod_fw, comp_ring_cons;
 u16 sw_comp_cons, sw_comp_prod;
 int rx_pkt = 0;
 union eth_rx_cqe *cqe;
 struct eth_fast_path_rx_cqe *cqe_fp;






 bd_cons = fp->rx_bd_cons;
 bd_prod = fp->rx_bd_prod;
 bd_prod_fw = bd_prod;
 sw_comp_cons = fp->rx_comp_cons;
 sw_comp_prod = fp->rx_comp_prod;

 comp_ring_cons = RCQ_BD(sw_comp_cons);
 cqe = &fp->rx_comp_ring[comp_ring_cons];
 cqe_fp = &cqe->fast_path_cqe;

 DP(NETIF_MSG_RX_STATUS,
    "queue[%d]: sw_comp_cons %u\n", fp->index, sw_comp_cons);

 while (BNX2X_IS_CQE_COMPLETED(cqe_fp)) {
  struct sw_rx_bd *rx_buf = ((void*)0);
  struct sk_buff *skb;
  u8 cqe_fp_flags;
  enum eth_rx_cqe_type cqe_fp_type;
  u16 len, pad, queue;
  u8 *data;






  bd_prod = RX_BD(bd_prod);
  bd_cons = RX_BD(bd_cons);

  cqe_fp_flags = cqe_fp->type_error_flags;
  cqe_fp_type = cqe_fp_flags & ETH_FAST_PATH_RX_CQE_TYPE;

  DP(NETIF_MSG_RX_STATUS,
     "CQE type %x  err %x  status %x  queue %x  vlan %x  len %u\n",
     CQE_TYPE(cqe_fp_flags),
     cqe_fp_flags, cqe_fp->status_flags,
     le32_to_cpu(cqe_fp->rss_hash_result),
     le16_to_cpu(cqe_fp->vlan_tag),
     le16_to_cpu(cqe_fp->pkt_len_or_gro_seg_len));


  if (unlikely(CQE_TYPE_SLOW(cqe_fp_type))) {
   bnx2x_sp_event(fp, cqe);
   goto next_cqe;
  }

  rx_buf = &fp->rx_buf_ring[bd_cons];
  data = rx_buf->data;

  if (!CQE_TYPE_FAST(cqe_fp_type)) {
   struct bnx2x_agg_info *tpa_info;
   u16 frag_size, pages;
   if (CQE_TYPE_START(cqe_fp_type)) {
    u16 queue = cqe_fp->queue_index;
    DP(NETIF_MSG_RX_STATUS,
       "calling tpa_start on queue %d\n",
       queue);

    bnx2x_tpa_start(fp, queue,
      bd_cons, bd_prod,
      cqe_fp);

    goto next_rx;
   }
   queue = cqe->end_agg_cqe.queue_index;
   tpa_info = &fp->tpa_info[queue];
   DP(NETIF_MSG_RX_STATUS,
      "calling tpa_stop on queue %d\n",
      queue);

   frag_size = le16_to_cpu(cqe->end_agg_cqe.pkt_len) -
        tpa_info->len_on_bd;

   if (fp->mode == TPA_MODE_GRO)
    pages = (frag_size + tpa_info->full_page - 1) /
      tpa_info->full_page;
   else
    pages = SGE_PAGE_ALIGN(frag_size) >>
     SGE_PAGE_SHIFT;

   bnx2x_tpa_stop(bp, fp, tpa_info, pages,
           &cqe->end_agg_cqe, comp_ring_cons);





   bnx2x_update_sge_prod(fp, pages, &cqe->end_agg_cqe);
   goto next_cqe;
  }

  len = le16_to_cpu(cqe_fp->pkt_len_or_gro_seg_len);
  pad = cqe_fp->placement_offset;
  dma_sync_single_for_cpu(&bp->pdev->dev,
     dma_unmap_addr(rx_buf, mapping),
     pad + RX_COPY_THRESH,
     DMA_FROM_DEVICE);
  pad += NET_SKB_PAD;
  prefetch(data + pad);

  if (unlikely(cqe_fp_flags & ETH_RX_ERROR_FALGS)) {
   DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
      "ERROR  flags %x  rx packet %u\n",
      cqe_fp_flags, sw_comp_cons);
   bnx2x_fp_qstats(bp, fp)->rx_err_discard_pkt++;
   goto reuse_rx;
  }




  if ((bp->dev->mtu > ETH_MAX_PACKET_SIZE) &&
      (len <= RX_COPY_THRESH)) {
   skb = netdev_alloc_skb_ip_align(bp->dev, len);
   if (skb == ((void*)0)) {
    DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
       "ERROR  packet dropped because of alloc failure\n");
    bnx2x_fp_qstats(bp, fp)->rx_skb_alloc_failed++;
    goto reuse_rx;
   }
   memcpy(skb->data, data + pad, len);
   bnx2x_reuse_rx_data(fp, bd_cons, bd_prod);
  } else {
   if (likely(bnx2x_alloc_rx_data(bp, fp, bd_prod,
             GFP_ATOMIC) == 0)) {
    dma_unmap_single(&bp->pdev->dev,
       dma_unmap_addr(rx_buf, mapping),
       fp->rx_buf_size,
       DMA_FROM_DEVICE);
    skb = build_skb(data);
    if (unlikely(!skb)) {
     bnx2x_frag_free(fp, data);
     bnx2x_fp_qstats(bp, fp)->
       rx_skb_alloc_failed++;
     goto next_rx;
    }
    skb_reserve(skb, pad);
   } else {
    DP(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
       "ERROR  packet dropped because of alloc failure\n");
    bnx2x_fp_qstats(bp, fp)->rx_skb_alloc_failed++;
reuse_rx:
    bnx2x_reuse_rx_data(fp, bd_cons, bd_prod);
    goto next_rx;
   }
  }

  skb_put(skb, len);


  if (bp->rx_mode == BNX2X_RX_MODE_PROMISC && bp->vlgrp == ((void*)0)) {
   struct ethhdr *eth = (struct ethhdr *) skb->data;

   if (eth->h_proto == htons(ETH_P_8021Q)) {
    memmove(skb->data + VLAN_HLEN, skb->data,
     2 * ETH_ALEN);
    skb_pull(skb, VLAN_HLEN);
    skb->mac_header += VLAN_HLEN;
   }
  }

  skb->protocol = eth_type_trans(skb, bp->dev);


  skb->rxhash = bnx2x_get_rxhash(bp, cqe_fp);

  skb_checksum_none_assert(skb);

  if (bp->rx_csum)
   bnx2x_csum_validate(skb, cqe, fp,
         bnx2x_fp_qstats(bp, fp));

  skb_record_rx_queue(skb, fp->rx_queue);

  if ((le16_to_cpu(cqe_fp->pars_flags.flags) &
       PARSING_FLAGS_VLAN))
   vlan_gro_receive(&fp->napi, bp->vlgrp,
    le16_to_cpu(cqe_fp->vlan_tag), skb);
  else
   napi_gro_receive(&fp->napi, skb);

next_rx:
  rx_buf->data = ((void*)0);

  bd_cons = NEXT_RX_IDX(bd_cons);
  bd_prod = NEXT_RX_IDX(bd_prod);
  bd_prod_fw = NEXT_RX_IDX(bd_prod_fw);
  rx_pkt++;
next_cqe:
  sw_comp_prod = NEXT_RCQ_IDX(sw_comp_prod);
  sw_comp_cons = NEXT_RCQ_IDX(sw_comp_cons);


  BNX2X_SEED_CQE(cqe_fp);

  if (rx_pkt == budget)
   break;

  comp_ring_cons = RCQ_BD(sw_comp_cons);
  cqe = &fp->rx_comp_ring[comp_ring_cons];
  cqe_fp = &cqe->fast_path_cqe;
 }

 fp->rx_bd_cons = bd_cons;
 fp->rx_bd_prod = bd_prod_fw;
 fp->rx_comp_cons = sw_comp_cons;
 fp->rx_comp_prod = sw_comp_prod;


 bnx2x_update_rx_prod(bp, fp, bd_prod_fw, sw_comp_prod,
        fp->rx_sge_prod);

 fp->rx_pkt += rx_pkt;
 fp->rx_calls++;

 return rx_pkt;
}
