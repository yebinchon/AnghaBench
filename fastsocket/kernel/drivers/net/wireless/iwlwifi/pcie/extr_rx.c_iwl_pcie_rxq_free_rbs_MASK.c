#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_rxq {int /*<<< orphan*/  rx_used; TYPE_1__* pool; } ;
struct iwl_trans_pcie {int rx_page_order; struct iwl_rxq rxq; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int PAGE_SIZE ; 
 int RX_FREE_BUFFERS ; 
 int RX_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	struct iwl_rxq *rxq = &trans_pcie->rxq;
	int i;

	/* Fill the rx_used queue with _all_ of the Rx buffers */
	for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++) {
		/* In the reset function, these buffers may have been allocated
		 * to an SKB, so we need to unmap and free potential storage */
		if (rxq->pool[i].page != NULL) {
			FUNC2(trans->dev, rxq->pool[i].page_dma,
				       PAGE_SIZE << trans_pcie->rx_page_order,
				       DMA_FROM_DEVICE);
			FUNC1(rxq->pool[i].page,
				     trans_pcie->rx_page_order);
			rxq->pool[i].page = NULL;
		}
		FUNC3(&rxq->pool[i].list, &rxq->rx_used);
	}
}