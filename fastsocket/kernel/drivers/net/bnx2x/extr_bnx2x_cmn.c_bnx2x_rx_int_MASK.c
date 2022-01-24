#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct eth_fast_path_rx_cqe {int type_error_flags; size_t queue_index; size_t placement_offset; int /*<<< orphan*/  vlan_tag; TYPE_2__ pars_flags; int /*<<< orphan*/  pkt_len_or_gro_seg_len; int /*<<< orphan*/  rss_hash_result; int /*<<< orphan*/  status_flags; } ;
struct TYPE_12__ {size_t queue_index; int /*<<< orphan*/  pkt_len; } ;
union eth_rx_cqe {struct eth_fast_path_rx_cqe fast_path_cqe; TYPE_5__ end_agg_cqe; } ;
typedef  int u8 ;
typedef  size_t u16 ;
struct sw_rx_bd {int* data; } ;
struct sk_buff {int /*<<< orphan*/  rxhash; int /*<<< orphan*/  protocol; int /*<<< orphan*/  mac_header; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct bnx2x_fastpath {size_t rx_bd_cons; size_t rx_bd_prod; size_t rx_comp_cons; size_t rx_comp_prod; scalar_t__ mode; int rx_pkt; int /*<<< orphan*/  rx_calls; int /*<<< orphan*/  rx_sge_prod; union eth_rx_cqe* rx_comp_ring; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  rx_buf_size; struct bnx2x_agg_info* tpa_info; scalar_t__ disable_tpa; struct sw_rx_bd* rx_buf_ring; int /*<<< orphan*/  index; struct bnx2x* bp; } ;
struct bnx2x_agg_info {size_t len_on_bd; size_t full_page; } ;
struct bnx2x {int panic; scalar_t__ rx_mode; int /*<<< orphan*/ * vlgrp; scalar_t__ rx_csum; TYPE_3__* dev; TYPE_1__* pdev; } ;
typedef  enum eth_rx_cqe_type { ____Placeholder_eth_rx_cqe_type } eth_rx_cqe_type ;
struct TYPE_13__ {int /*<<< orphan*/  rx_skb_alloc_failed; int /*<<< orphan*/  rx_err_discard_pkt; } ;
struct TYPE_11__ {scalar_t__ mtu; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct eth_fast_path_rx_cqe*) ; 
 scalar_t__ BNX2X_RX_MODE_PROMISC ; 
 int /*<<< orphan*/  FUNC2 (struct eth_fast_path_rx_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int ETH_ALEN ; 
 int ETH_FAST_PATH_RX_CQE_TYPE ; 
 scalar_t__ ETH_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ETH_RX_ERROR_FALGS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETIF_MSG_RX_ERR ; 
 int NETIF_MSG_RX_STATUS ; 
 size_t NET_SKB_PAD ; 
 size_t FUNC9 (size_t) ; 
 size_t FUNC10 (size_t) ; 
 int PARSING_FLAGS_VLAN ; 
 size_t FUNC11 (size_t) ; 
 size_t FUNC12 (size_t) ; 
 size_t RX_COPY_THRESH ; 
 size_t FUNC13 (size_t) ; 
 size_t SGE_PAGE_SHIFT ; 
 scalar_t__ TPA_MODE_GRO ; 
 scalar_t__ VLAN_HLEN ; 
 scalar_t__ FUNC14 (struct bnx2x*,struct bnx2x_fastpath*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,union eth_rx_cqe*,struct bnx2x_fastpath*,TYPE_7__*) ; 
 TYPE_7__* FUNC16 (struct bnx2x*,struct bnx2x_fastpath*) ; 
 int /*<<< orphan*/  FUNC17 (struct bnx2x_fastpath*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct bnx2x*,struct eth_fast_path_rx_cqe*) ; 
 int /*<<< orphan*/  FUNC19 (struct bnx2x_fastpath*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct bnx2x_fastpath*,union eth_rx_cqe*) ; 
 int /*<<< orphan*/  FUNC21 (struct bnx2x_fastpath*,size_t,size_t,size_t,struct eth_fast_path_rx_cqe*) ; 
 int /*<<< orphan*/  FUNC22 (struct bnx2x*,struct bnx2x_fastpath*,struct bnx2x_agg_info*,size_t,TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC23 (struct bnx2x*,struct bnx2x_fastpath*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct bnx2x_fastpath*,size_t,TYPE_5__*) ; 
 struct sk_buff* FUNC25 (int*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct sw_rx_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,TYPE_3__*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__,int*,size_t) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC37 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC38 (int*) ; 
 int /*<<< orphan*/  FUNC39 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC40 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC41 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC42 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct sk_buff*,size_t) ; 
 scalar_t__ FUNC44 (int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sk_buff*) ; 

int FUNC46(struct bnx2x_fastpath *fp, int budget)
{
	struct bnx2x *bp = fp->bp;
	u16 bd_cons, bd_prod, bd_prod_fw, comp_ring_cons;
	u16 sw_comp_cons, sw_comp_prod;
	int rx_pkt = 0;
	union eth_rx_cqe *cqe;
	struct eth_fast_path_rx_cqe *cqe_fp;

#ifdef BNX2X_STOP_ON_ERROR
	if (unlikely(bp->panic))
		return 0;
#endif

	bd_cons = fp->rx_bd_cons;
	bd_prod = fp->rx_bd_prod;
	bd_prod_fw = bd_prod;
	sw_comp_cons = fp->rx_comp_cons;
	sw_comp_prod = fp->rx_comp_prod;

	comp_ring_cons = FUNC11(sw_comp_cons);
	cqe = &fp->rx_comp_ring[comp_ring_cons];
	cqe_fp = &cqe->fast_path_cqe;

	FUNC8(NETIF_MSG_RX_STATUS,
	   "queue[%d]: sw_comp_cons %u\n", fp->index, sw_comp_cons);

	while (FUNC1(cqe_fp)) {
		struct sw_rx_bd *rx_buf = NULL;
		struct sk_buff *skb;
		u8 cqe_fp_flags;
		enum eth_rx_cqe_type cqe_fp_type;
		u16 len, pad, queue;
		u8 *data;

#ifdef BNX2X_STOP_ON_ERROR
		if (unlikely(bp->panic))
			return 0;
#endif

		bd_prod = FUNC12(bd_prod);
		bd_cons = FUNC12(bd_cons);

		cqe_fp_flags = cqe_fp->type_error_flags;
		cqe_fp_type = cqe_fp_flags & ETH_FAST_PATH_RX_CQE_TYPE;

		FUNC8(NETIF_MSG_RX_STATUS,
		   "CQE type %x  err %x  status %x  queue %x  vlan %x  len %u\n",
		   FUNC3(cqe_fp_flags),
		   cqe_fp_flags, cqe_fp->status_flags,
		   FUNC32(cqe_fp->rss_hash_result),
		   FUNC31(cqe_fp->vlan_tag),
		   FUNC31(cqe_fp->pkt_len_or_gro_seg_len));

		/* is this a slowpath msg? */
		if (FUNC44(FUNC5(cqe_fp_type))) {
			FUNC20(fp, cqe);
			goto next_cqe;
		}

		rx_buf = &fp->rx_buf_ring[bd_cons];
		data = rx_buf->data;

		if (!FUNC4(cqe_fp_type)) {
			struct bnx2x_agg_info *tpa_info;
			u16 frag_size, pages;
#ifdef BNX2X_STOP_ON_ERROR
			/* sanity check */
			if (fp->disable_tpa &&
			    (CQE_TYPE_START(cqe_fp_type) ||
			     CQE_TYPE_STOP(cqe_fp_type)))
				BNX2X_ERR("START/STOP packet while disable_tpa type %x\n",
					  CQE_TYPE(cqe_fp_type));
#endif

			if (FUNC6(cqe_fp_type)) {
				u16 queue = cqe_fp->queue_index;
				FUNC8(NETIF_MSG_RX_STATUS,
				   "calling tpa_start on queue %d\n",
				   queue);

				FUNC21(fp, queue,
						bd_cons, bd_prod,
						cqe_fp);

				goto next_rx;
			}
			queue = cqe->end_agg_cqe.queue_index;
			tpa_info = &fp->tpa_info[queue];
			FUNC8(NETIF_MSG_RX_STATUS,
			   "calling tpa_stop on queue %d\n",
			   queue);

			frag_size = FUNC31(cqe->end_agg_cqe.pkt_len) -
				    tpa_info->len_on_bd;

			if (fp->mode == TPA_MODE_GRO)
				pages = (frag_size + tpa_info->full_page - 1) /
					 tpa_info->full_page;
			else
				pages = FUNC13(frag_size) >>
					SGE_PAGE_SHIFT;

			FUNC22(bp, fp, tpa_info, pages,
				       &cqe->end_agg_cqe, comp_ring_cons);
#ifdef BNX2X_STOP_ON_ERROR
			if (bp->panic)
				return 0;
#endif

			FUNC24(fp, pages, &cqe->end_agg_cqe);
			goto next_cqe;
		}
		/* non TPA */
		len = FUNC31(cqe_fp->pkt_len_or_gro_seg_len);
		pad = cqe_fp->placement_offset;
		FUNC26(&bp->pdev->dev,
					FUNC27(rx_buf, mapping),
					pad + RX_COPY_THRESH,
					DMA_FROM_DEVICE);
		pad += NET_SKB_PAD;
		FUNC38(data + pad); /* speedup eth_type_trans() */
		/* is this an error packet? */
		if (FUNC44(cqe_fp_flags & ETH_RX_ERROR_FALGS)) {
			FUNC8(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
			   "ERROR  flags %x  rx packet %u\n",
			   cqe_fp_flags, sw_comp_cons);
			FUNC16(bp, fp)->rx_err_discard_pkt++;
			goto reuse_rx;
		}

		/* Since we don't have a jumbo ring
		 * copy small packets if mtu > 1500
		 */
		if ((bp->dev->mtu > ETH_MAX_PACKET_SIZE) &&
		    (len <= RX_COPY_THRESH)) {
			skb = FUNC37(bp->dev, len);
			if (skb == NULL) {
				FUNC8(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
				   "ERROR  packet dropped because of alloc failure\n");
				FUNC16(bp, fp)->rx_skb_alloc_failed++;
				goto reuse_rx;
			}
			FUNC34(skb->data, data + pad, len);
			FUNC19(fp, bd_cons, bd_prod);
		} else {
			if (FUNC33(FUNC14(bp, fp, bd_prod,
						       GFP_ATOMIC) == 0)) {
				FUNC28(&bp->pdev->dev,
						 FUNC27(rx_buf, mapping),
						 fp->rx_buf_size,
						 DMA_FROM_DEVICE);
				skb = FUNC25(data);
				if (FUNC44(!skb)) {
					FUNC17(fp, data);
					FUNC16(bp, fp)->
							rx_skb_alloc_failed++;
					goto next_rx;
				}
				FUNC43(skb, pad);
			} else {
				FUNC8(NETIF_MSG_RX_ERR | NETIF_MSG_RX_STATUS,
				   "ERROR  packet dropped because of alloc failure\n");
				FUNC16(bp, fp)->rx_skb_alloc_failed++;
reuse_rx:
				FUNC19(fp, bd_cons, bd_prod);
				goto next_rx;
			}
		}

		FUNC41(skb, len);

		/* strip VLAN header in PROMISC mode */
		if (bp->rx_mode == BNX2X_RX_MODE_PROMISC && bp->vlgrp == NULL) {
			struct ethhdr *eth = (struct ethhdr *) skb->data;

			if (eth->h_proto == FUNC30(ETH_P_8021Q)) {
				FUNC35(skb->data + VLAN_HLEN, skb->data,
					2 * ETH_ALEN);
				FUNC40(skb, VLAN_HLEN);
				skb->mac_header += VLAN_HLEN;
			}
		}

		skb->protocol = FUNC29(skb, bp->dev);

		/* Set Toeplitz hash for a none-LRO skb */
		skb->rxhash = FUNC18(bp, cqe_fp);

		FUNC39(skb);

		if (bp->rx_csum)
			FUNC15(skb, cqe, fp,
					    FUNC16(bp, fp));

		FUNC42(skb, fp->rx_queue);

		if ((FUNC31(cqe_fp->pars_flags.flags) &
		     PARSING_FLAGS_VLAN))
			FUNC45(&fp->napi, bp->vlgrp,
				FUNC31(cqe_fp->vlan_tag), skb);
		else
			FUNC36(&fp->napi, skb);

next_rx:
		rx_buf->data = NULL;

		bd_cons = FUNC10(bd_cons);
		bd_prod = FUNC10(bd_prod);
		bd_prod_fw = FUNC10(bd_prod_fw);
		rx_pkt++;
next_cqe:
		sw_comp_prod = FUNC9(sw_comp_prod);
		sw_comp_cons = FUNC9(sw_comp_cons);

		/* mark CQE as free */
		FUNC2(cqe_fp);

		if (rx_pkt == budget)
			break;

		comp_ring_cons = FUNC11(sw_comp_cons);
		cqe = &fp->rx_comp_ring[comp_ring_cons];
		cqe_fp = &cqe->fast_path_cqe;
	} /* while */

	fp->rx_bd_cons = bd_cons;
	fp->rx_bd_prod = bd_prod_fw;
	fp->rx_comp_cons = sw_comp_cons;
	fp->rx_comp_prod = sw_comp_prod;

	/* Update producers */
	FUNC23(bp, fp, bd_prod_fw, sw_comp_prod,
			     fp->rx_sge_prod);

	fp->rx_pkt += rx_pkt;
	fp->rx_calls++;

	return rx_pkt;
}