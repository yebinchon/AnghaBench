#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ks8695_priv {int rx_irq; int tx_irq; int link_irq; TYPE_4__* rx_buffers; int /*<<< orphan*/  dev; TYPE_3__* rx_ring; TYPE_2__* tx_buffers; TYPE_1__* tx_ring; int /*<<< orphan*/  ndev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * skb; int /*<<< orphan*/  length; int /*<<< orphan*/  dma_ptr; } ;
struct TYPE_7__ {scalar_t__ data_ptr; scalar_t__ status; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skb; int /*<<< orphan*/  length; int /*<<< orphan*/  dma_ptr; } ;
struct TYPE_5__ {scalar_t__ data_ptr; scalar_t__ status; scalar_t__ owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DRXC_RE ; 
 int DTXC_TE ; 
 int /*<<< orphan*/  KS8695_DRXC ; 
 int /*<<< orphan*/  KS8695_DTXC ; 
 int MAX_RX_DESC ; 
 int MAX_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ks8695_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ks8695_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ks8695_priv *ksp)
{
	u32 ctrl;
	int buff_n;

	/* Disable packet transmission */
	ctrl = FUNC3(ksp, KS8695_DTXC);
	FUNC4(ksp, KS8695_DTXC, ctrl & ~DTXC_TE);

	/* Disable packet reception */
	ctrl = FUNC3(ksp, KS8695_DRXC);
	FUNC4(ksp, KS8695_DRXC, ctrl & ~DRXC_RE);

	/* Release the IRQs */
	FUNC2(ksp->rx_irq, ksp->ndev);
	FUNC2(ksp->tx_irq, ksp->ndev);
	if (ksp->link_irq != -1)
		FUNC2(ksp->link_irq, ksp->ndev);

	/* Throw away any pending TX packets */
	for (buff_n = 0; buff_n < MAX_TX_DESC; ++buff_n) {
		if (ksp->tx_buffers[buff_n].skb) {
			/* Remove this SKB from the TX ring */
			ksp->tx_ring[buff_n].owner = 0;
			ksp->tx_ring[buff_n].status = 0;
			ksp->tx_ring[buff_n].data_ptr = 0;

			/* Unmap and bin this SKB */
			FUNC1(ksp->dev,
					 ksp->tx_buffers[buff_n].dma_ptr,
					 ksp->tx_buffers[buff_n].length,
					 DMA_TO_DEVICE);
			FUNC0(ksp->tx_buffers[buff_n].skb);
			ksp->tx_buffers[buff_n].skb = NULL;
		}
	}

	/* Purge the RX buffers */
	for (buff_n = 0; buff_n < MAX_RX_DESC; ++buff_n) {
		if (ksp->rx_buffers[buff_n].skb) {
			/* Remove the SKB from the RX ring */
			ksp->rx_ring[buff_n].status = 0;
			ksp->rx_ring[buff_n].data_ptr = 0;

			/* Unmap and bin the SKB */
			FUNC1(ksp->dev,
					 ksp->rx_buffers[buff_n].dma_ptr,
					 ksp->rx_buffers[buff_n].length,
					 DMA_FROM_DEVICE);
			FUNC0(ksp->rx_buffers[buff_n].skb);
			ksp->rx_buffers[buff_n].skb = NULL;
		}
	}
}