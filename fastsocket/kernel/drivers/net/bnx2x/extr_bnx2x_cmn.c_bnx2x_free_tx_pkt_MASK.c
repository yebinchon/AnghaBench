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
struct sw_tx_bd {size_t first_bd; int flags; struct sk_buff* skb; } ;
struct sk_buff {int /*<<< orphan*/  end; } ;
struct eth_tx_start_bd {int /*<<< orphan*/  nbd; } ;
struct eth_tx_bd {int /*<<< orphan*/  nbd; } ;
struct bnx2x_fp_txdata {TYPE_1__* tx_desc_ring; int /*<<< orphan*/  txq_index; struct sw_tx_bd* tx_buf_ring; } ;
struct bnx2x {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct eth_tx_start_bd reg_bd; struct eth_tx_start_bd start_bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_tx_start_bd*) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_tx_start_bd*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int BNX2X_TSO_SPLIT_BD ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,struct sw_tx_bd*,struct sk_buff*) ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETIF_MSG_TX_DONE ; 
 size_t FUNC4 (size_t) ; 
 size_t FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC13(struct bnx2x *bp, struct bnx2x_fp_txdata *txdata,
			     u16 idx)
{
	struct sw_tx_bd *tx_buf = &txdata->tx_buf_ring[idx];
	struct eth_tx_start_bd *tx_start_bd;
	struct eth_tx_bd *tx_data_bd;
	struct sk_buff *skb = tx_buf->skb;
	u16 bd_idx = FUNC5(tx_buf->first_bd), new_cons;
	int nbd;

	/* prefetch skb end pointer to speedup dev_kfree_skb() */
	FUNC12(&skb->end);

	FUNC3(NETIF_MSG_TX_DONE, "fp[%d]: pkt_idx %d  buff @(%p)->skb %p\n",
	   txdata->txq_index, idx, tx_buf, skb);

	/* unmap first bd */
	tx_start_bd = &txdata->tx_desc_ring[bd_idx].start_bd;
	FUNC10(&bp->pdev->dev, FUNC0(tx_start_bd),
			 FUNC1(tx_start_bd), DMA_TO_DEVICE);

	nbd = FUNC11(tx_start_bd->nbd) - 1;
#ifdef BNX2X_STOP_ON_ERROR
	if ((nbd - 1) > (MAX_SKB_FRAGS + 2)) {
		BNX2X_ERR("BAD nbd!\n");
		bnx2x_panic();
	}
#endif
	new_cons = nbd + tx_buf->first_bd;

	/* Get the next bd */
	bd_idx = FUNC5(FUNC4(bd_idx));

	/* Skip a parse bd... */
	--nbd;
	bd_idx = FUNC5(FUNC4(bd_idx));

	/* ...and the TSO split header bd since they have no mapping */
	if (tx_buf->flags & BNX2X_TSO_SPLIT_BD) {
		--nbd;
		bd_idx = FUNC5(FUNC4(bd_idx));
	}

	/* now free frags */
	while (nbd > 0) {

		tx_data_bd = &txdata->tx_desc_ring[bd_idx].reg_bd;
		FUNC9(&bp->pdev->dev, FUNC0(tx_data_bd),
			       FUNC1(tx_data_bd), DMA_TO_DEVICE);
		if (--nbd)
			bd_idx = FUNC5(FUNC4(bd_idx));
	}

	/* release skb */
	FUNC6(!skb);
	FUNC8(skb);
	tx_buf->first_bd = 0;
	tx_buf->skb = NULL;

	return new_cons;
}