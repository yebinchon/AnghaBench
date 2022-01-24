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
struct il_rx_queue {int /*<<< orphan*/  lock; scalar_t__ free_count; scalar_t__ write_actual; scalar_t__ write; scalar_t__ read; int /*<<< orphan*/  rx_used; TYPE_2__* pool; int /*<<< orphan*/  rx_free; } ;
struct TYPE_3__ {int rx_page_order; } ;
struct il_priv {TYPE_1__ hw_params; int /*<<< orphan*/  pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_FREE_BUFFERS ; 
 int RX_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct il_priv *il, struct il_rx_queue *rxq)
{
	unsigned long flags;
	int i;
	FUNC4(&rxq->lock, flags);
	FUNC0(&rxq->rx_free);
	FUNC0(&rxq->rx_used);
	/* Fill the rx_used queue with _all_ of the Rx buffers */
	for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++) {
		/* In the reset function, these buffers may have been allocated
		 * to an SKB, so we need to unmap and free potential storage */
		if (rxq->pool[i].page != NULL) {
			FUNC3(il->pci_dev, rxq->pool[i].page_dma,
				       PAGE_SIZE << il->hw_params.rx_page_order,
				       PCI_DMA_FROMDEVICE);
			FUNC1(il, rxq->pool[i].page);
			rxq->pool[i].page = NULL;
		}
		FUNC2(&rxq->pool[i].list, &rxq->rx_used);
	}

	/* Set us so that we have processed and used all buffers, but have
	 * not restocked the Rx queue with fresh buffers */
	rxq->read = rxq->write = 0;
	rxq->write_actual = 0;
	rxq->free_count = 0;
	FUNC5(&rxq->lock, flags);
}