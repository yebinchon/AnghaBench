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
struct ring_info {int dummy; } ;
struct dma_desc {int dummy; } ;
struct b44 {int /*<<< orphan*/  flags; scalar_t__ tx_ring_dma; struct dma_desc* tx_ring; TYPE_1__* sdev; scalar_t__ rx_ring_dma; struct dma_desc* rx_ring; void* tx_buffers; void* rx_buffers; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FLAG_RX_RING_HACK ; 
 int /*<<< orphan*/  B44_FLAG_TX_RING_HACK ; 
 int B44_RX_RING_SIZE ; 
 int B44_TX_RING_SIZE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (int) ; 
 int DMA_TABLE_BYTES ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct dma_desc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_desc*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct b44 *bp, gfp_t gfp)
{
	int size;

	size  = B44_RX_RING_SIZE * sizeof(struct ring_info);
	bp->rx_buffers = FUNC6(size, gfp);
	if (!bp->rx_buffers)
		goto out_err;

	size = B44_TX_RING_SIZE * sizeof(struct ring_info);
	bp->tx_buffers = FUNC6(size, gfp);
	if (!bp->tx_buffers)
		goto out_err;

	size = DMA_TABLE_BYTES;
	bp->rx_ring = FUNC2(bp->sdev->dma_dev, size,
					 &bp->rx_ring_dma, gfp);
	if (!bp->rx_ring) {
		/* Allocation may have failed due to pci_alloc_consistent
		   insisting on use of GFP_DMA, which is more restrictive
		   than necessary...  */
		struct dma_desc *rx_ring;
		dma_addr_t rx_ring_dma;

		rx_ring = FUNC6(size, gfp);
		if (!rx_ring)
			goto out_err;

		rx_ring_dma = FUNC3(bp->sdev->dma_dev, rx_ring,
					     DMA_TABLE_BYTES,
					     DMA_BIDIRECTIONAL);

		if (FUNC4(bp->sdev->dma_dev, rx_ring_dma) ||
			rx_ring_dma + size > FUNC0(30)) {
			FUNC5(rx_ring);
			goto out_err;
		}

		bp->rx_ring = rx_ring;
		bp->rx_ring_dma = rx_ring_dma;
		bp->flags |= B44_FLAG_RX_RING_HACK;
	}

	bp->tx_ring = FUNC2(bp->sdev->dma_dev, size,
					 &bp->tx_ring_dma, gfp);
	if (!bp->tx_ring) {
		/* Allocation may have failed due to ssb_dma_alloc_consistent
		   insisting on use of GFP_DMA, which is more restrictive
		   than necessary...  */
		struct dma_desc *tx_ring;
		dma_addr_t tx_ring_dma;

		tx_ring = FUNC6(size, gfp);
		if (!tx_ring)
			goto out_err;

		tx_ring_dma = FUNC3(bp->sdev->dma_dev, tx_ring,
					     DMA_TABLE_BYTES,
					     DMA_TO_DEVICE);

		if (FUNC4(bp->sdev->dma_dev, tx_ring_dma) ||
			tx_ring_dma + size > FUNC0(30)) {
			FUNC5(tx_ring);
			goto out_err;
		}

		bp->tx_ring = tx_ring;
		bp->tx_ring_dma = tx_ring_dma;
		bp->flags |= B44_FLAG_TX_RING_HACK;
	}

	return 0;

out_err:
	FUNC1(bp);
	return -ENOMEM;
}