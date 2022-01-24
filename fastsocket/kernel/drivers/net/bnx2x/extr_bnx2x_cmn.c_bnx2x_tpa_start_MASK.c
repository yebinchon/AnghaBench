#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct sw_rx_bd {scalar_t__ data; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct eth_fast_path_rx_cqe {int /*<<< orphan*/  pkt_len_or_gro_seg_len; int /*<<< orphan*/  placement_offset; int /*<<< orphan*/  len_on_bd; int /*<<< orphan*/  vlan_tag; TYPE_2__ pars_flags; } ;
struct bnx2x_fastpath {scalar_t__ mode; int tpa_queue_used; int /*<<< orphan*/  rx_buf_size; struct bnx2x_agg_info* tpa_info; struct eth_rx_bd* rx_desc_ring; struct sw_rx_bd* rx_buf_ring; struct bnx2x* bp; } ;
struct bnx2x_agg_info {scalar_t__ tpa_state; size_t full_page; size_t gro_size; int /*<<< orphan*/  rxhash; int /*<<< orphan*/  placement_offset; void* len_on_bd; void* vlan_tag; void* parsing_flags; struct sw_rx_bd first_buf; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 scalar_t__ BNX2X_TPA_ERROR ; 
 scalar_t__ BNX2X_TPA_START ; 
 scalar_t__ BNX2X_TPA_STOP ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  NETIF_MSG_RX_STATUS ; 
 scalar_t__ NET_SKB_PAD ; 
 size_t SGE_PAGES ; 
 scalar_t__ TPA_MODE_GRO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct eth_fast_path_rx_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_fastpath*,size_t,size_t) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sw_rx_bd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct bnx2x_fastpath *fp, u16 queue,
			    u16 cons, u16 prod,
			    struct eth_fast_path_rx_cqe *cqe)
{
	struct bnx2x *bp = fp->bp;
	struct sw_rx_bd *cons_rx_buf = &fp->rx_buf_ring[cons];
	struct sw_rx_bd *prod_rx_buf = &fp->rx_buf_ring[prod];
	struct eth_rx_bd *prod_bd = &fp->rx_desc_ring[prod];
	dma_addr_t mapping;
	struct bnx2x_agg_info *tpa_info = &fp->tpa_info[queue];
	struct sw_rx_bd *first_buf = &tpa_info->first_buf;

	/* print error if current state != stop */
	if (tpa_info->tpa_state != BNX2X_TPA_STOP)
		FUNC0("start of bin not in stop [%d]\n", queue);

	/* Try to map an empty data buffer from the aggregation info  */
	mapping = FUNC7(&bp->pdev->dev,
				 first_buf->data + NET_SKB_PAD,
				 fp->rx_buf_size, DMA_FROM_DEVICE);
	/*
	 *  ...if it fails - move the skb from the consumer to the producer
	 *  and set the current aggregation state as ERROR to drop it
	 *  when TPA_STOP arrives.
	 */

	if (FUNC11(FUNC8(&bp->pdev->dev, mapping))) {
		/* Move the BD from the consumer to the producer */
		FUNC5(fp, cons, prod);
		tpa_info->tpa_state = BNX2X_TPA_ERROR;
		return;
	}

	/* move empty data from pool to prod */
	prod_rx_buf->data = first_buf->data;
	FUNC9(prod_rx_buf, mapping, mapping);
	/* point prod_bd to new data */
	prod_bd->addr_hi = FUNC6(FUNC2(mapping));
	prod_bd->addr_lo = FUNC6(FUNC3(mapping));

	/* move partial skb from cons to pool (don't unmap yet) */
	*first_buf = *cons_rx_buf;

	/* mark bin state as START */
	tpa_info->parsing_flags =
		FUNC10(cqe->pars_flags.flags);
	tpa_info->vlan_tag = FUNC10(cqe->vlan_tag);
	tpa_info->tpa_state = BNX2X_TPA_START;
	tpa_info->len_on_bd = FUNC10(cqe->len_on_bd);
	tpa_info->placement_offset = cqe->placement_offset;
	tpa_info->rxhash = FUNC4(bp, cqe);
	if (fp->mode == TPA_MODE_GRO) {
		u16 gro_size = FUNC10(cqe->pkt_len_or_gro_seg_len);
		tpa_info->full_page = SGE_PAGES / gro_size * gro_size;
		tpa_info->gro_size = gro_size;
	}

#ifdef BNX2X_STOP_ON_ERROR
	fp->tpa_queue_used |= (1 << queue);
#ifdef _ASM_GENERIC_INT_L64_H
	DP(NETIF_MSG_RX_STATUS, "fp->tpa_queue_used = 0x%lx\n",
#else
	DP(NETIF_MSG_RX_STATUS, "fp->tpa_queue_used = 0x%llx\n",
#endif
	   fp->tpa_queue_used);
#endif
}