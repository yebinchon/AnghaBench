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
struct sk_buff {int dummy; } ;
struct efx_tx_queue {int /*<<< orphan*/  read_count; int /*<<< orphan*/  queue; TYPE_2__* efx; } ;
struct efx_tx_buffer {int flags; scalar_t__ len; int /*<<< orphan*/  heap_buf; scalar_t__ skb; scalar_t__ unmap_len; scalar_t__ dma_addr; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFX_TX_BUF_HEAP ; 
 int EFX_TX_BUF_MAP_SINGLE ; 
 int EFX_TX_BUF_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_done ; 

__attribute__((used)) static void FUNC5(struct efx_tx_queue *tx_queue,
			       struct efx_tx_buffer *buffer)
{
	if (buffer->unmap_len) {
		struct device *dma_dev = &tx_queue->efx->pci_dev->dev;
		dma_addr_t unmap_addr = (buffer->dma_addr + buffer->len -
					 buffer->unmap_len);
		if (buffer->flags & EFX_TX_BUF_MAP_SINGLE)
			FUNC2(dma_dev, unmap_addr, buffer->unmap_len,
					 DMA_TO_DEVICE);
		else
			FUNC1(dma_dev, unmap_addr, buffer->unmap_len,
				       DMA_TO_DEVICE);
		buffer->unmap_len = 0;
	}

	if (buffer->flags & EFX_TX_BUF_SKB) {
		FUNC0((struct sk_buff *) buffer->skb);
		FUNC4(tx_queue->efx, tx_done, tx_queue->efx->net_dev,
			   "TX queue %d transmission id %x complete\n",
			   tx_queue->queue, tx_queue->read_count);
	} else if (buffer->flags & EFX_TX_BUF_HEAP) {
		FUNC3(buffer->heap_buf);
	}

	buffer->len = 0;
	buffer->flags = 0;
}