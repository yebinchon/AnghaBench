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
struct sk_buff {int len; int data_len; int /*<<< orphan*/  data; } ;
struct efx_tx_queue {unsigned int write_count; unsigned int insert_count; unsigned int ptr_mask; struct efx_tx_buffer* buffer; int /*<<< orphan*/  queue; struct efx_nic* efx; } ;
struct efx_tx_buffer {int flags; int len; int unmap_len; unsigned int dma_addr; struct sk_buff* skb; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; scalar_t__ gso_size; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned short EFX_TX_BUF_CONT ; 
 unsigned short EFX_TX_BUF_MAP_SINGLE ; 
 unsigned short EFX_TX_BUF_SKB ; 
 scalar_t__ FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_tx_queue*,struct efx_tx_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_tx_queue*,struct sk_buff*) ; 
 unsigned int FUNC9 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_tx_queue*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC14 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*,unsigned int) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC20(struct efx_tx_queue *tx_queue, struct sk_buff *skb)
{
	struct efx_nic *efx = tx_queue->efx;
	struct device *dma_dev = &efx->pci_dev->dev;
	struct efx_tx_buffer *buffer;
	skb_frag_t *fragment;
	unsigned int len, unmap_len = 0, insert_ptr;
	dma_addr_t dma_addr, unmap_addr = 0;
	unsigned int dma_len;
	unsigned short dma_flags;
	int i = 0;

	FUNC0(tx_queue->write_count != tx_queue->insert_count);

	if (FUNC18(skb)->gso_size)
		return FUNC8(tx_queue, skb);

	/* Get size of the initial fragment */
	len = FUNC16(skb);

	/* Pad if necessary */
	if (FUNC1(efx) && skb->len <= 32) {
		FUNC0(skb->data_len);
		len = 32 + 1;
		if (FUNC17(skb, len - skb->len))
			return NETDEV_TX_OK;
	}

	/* Map for DMA.  Use dma_map_single rather than dma_map_page
	 * since this is more efficient on machines with sparse
	 * memory.
	 */
	dma_flags = EFX_TX_BUF_MAP_SINGLE;
	dma_addr = FUNC3(dma_dev, skb->data, len, PCI_DMA_TODEVICE);

	/* Process all fragments */
	while (1) {
		if (FUNC19(FUNC4(dma_dev, dma_addr)))
			goto dma_err;

		/* Store fields for marking in the per-fragment final
		 * descriptor */
		unmap_len = len;
		unmap_addr = dma_addr;

		/* Add to TX queue, splitting across DMA boundaries */
		do {
			insert_ptr = tx_queue->insert_count & tx_queue->ptr_mask;
			buffer = &tx_queue->buffer[insert_ptr];
			FUNC0(buffer->flags);
			FUNC0(buffer->len);
			FUNC0(buffer->unmap_len);

			dma_len = FUNC9(efx, dma_addr);
			if (FUNC12(dma_len >= len))
				dma_len = len;

			/* Fill out per descriptor fields */
			buffer->len = dma_len;
			buffer->dma_addr = dma_addr;
			buffer->flags = EFX_TX_BUF_CONT;
			len -= dma_len;
			dma_addr += dma_len;
			++tx_queue->insert_count;
		} while (len);

		/* Transfer ownership of the unmapping to the final buffer */
		buffer->flags = EFX_TX_BUF_CONT | dma_flags;
		buffer->unmap_len = unmap_len;
		unmap_len = 0;

		/* Get address and size of next fragment */
		if (i >= FUNC18(skb)->nr_frags)
			break;
		fragment = &FUNC18(skb)->frags[i];
		len = FUNC15(fragment);
		i++;
		/* Map for DMA */
		dma_flags = 0;
		dma_addr = FUNC14(dma_dev, fragment, 0, len,
					    DMA_TO_DEVICE);
	}

	/* Transfer ownership of the skb to the final buffer */
	buffer->skb = skb;
	buffer->flags = EFX_TX_BUF_SKB | dma_flags;

	/* Pass off to hardware */
	FUNC10(tx_queue);

	FUNC11(tx_queue);

	return NETDEV_TX_OK;

 dma_err:
	FUNC13(efx, tx_err, efx->net_dev,
		  " TX queue %d could not map skb with %d bytes %d "
		  "fragments for DMA\n", tx_queue->queue, skb->len,
		  FUNC18(skb)->nr_frags + 1);

	/* Mark the packet as transmitted, and free the SKB ourselves */
	FUNC2(skb);

	/* Work backwards until we hit the original insert pointer value */
	while (tx_queue->insert_count != tx_queue->write_count) {
		--tx_queue->insert_count;
		insert_ptr = tx_queue->insert_count & tx_queue->ptr_mask;
		buffer = &tx_queue->buffer[insert_ptr];
		FUNC7(tx_queue, buffer);
	}

	/* Free the fragment we were mid-way through pushing */
	if (unmap_len) {
		if (dma_flags & EFX_TX_BUF_MAP_SINGLE)
			FUNC6(dma_dev, unmap_addr, unmap_len,
					 DMA_TO_DEVICE);
		else
			FUNC5(dma_dev, unmap_addr, unmap_len,
				       DMA_TO_DEVICE);
	}

	return NETDEV_TX_OK;
}