#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ks8695_priv {int rx_irq; int tx_irq; int link_irq; scalar_t__ tx_ring_used; scalar_t__ tx_ring_next_slot; scalar_t__ next_rx_desc_read; int /*<<< orphan*/  ndev; int /*<<< orphan*/  link_irq_name; int /*<<< orphan*/  tx_irq_name; int /*<<< orphan*/  rx_irq_name; scalar_t__ tx_ring_dma; scalar_t__ rx_ring_dma; } ;

/* Variables and functions */
 int DRXC_RE ; 
 int DTXC_TE ; 
 int /*<<< orphan*/  KS8695_DRSC ; 
 int /*<<< orphan*/  KS8695_DRXC ; 
 int /*<<< orphan*/  KS8695_DTXC ; 
 int /*<<< orphan*/  KS8695_RDLB ; 
 int /*<<< orphan*/  KS8695_TDLB ; 
 int /*<<< orphan*/  ks8695_link_irq ; 
 int FUNC0 (struct ks8695_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8695_priv*) ; 
 int /*<<< orphan*/  ks8695_rx_irq ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks8695_tx_irq ; 
 int /*<<< orphan*/  FUNC3 (struct ks8695_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct ks8695_priv *ksp)
{
	int ret;
	u32 ctrl;

	FUNC1(ksp);

	/* Initialise the DMA engines */
	FUNC3(ksp, KS8695_RDLB, (u32) ksp->rx_ring_dma);
	FUNC3(ksp, KS8695_TDLB, (u32) ksp->tx_ring_dma);

	/* Request the IRQs */
	ret = FUNC2(ksp->rx_irq, ksp->rx_irq_name,
			       ks8695_rx_irq, ksp->ndev);
	if (ret)
		return ret;
	ret = FUNC2(ksp->tx_irq, ksp->tx_irq_name,
			       ks8695_tx_irq, ksp->ndev);
	if (ret)
		return ret;
	if (ksp->link_irq != -1) {
		ret = FUNC2(ksp->link_irq, ksp->link_irq_name,
				       ks8695_link_irq, ksp->ndev);
		if (ret)
			return ret;
	}

	/* Set up the ring indices */
	ksp->next_rx_desc_read = 0;
	ksp->tx_ring_next_slot = 0;
	ksp->tx_ring_used = 0;

	/* Bring up transmission */
	ctrl = FUNC0(ksp, KS8695_DTXC);
	/* Enable packet transmission */
	FUNC3(ksp, KS8695_DTXC, ctrl | DTXC_TE);

	/* Bring up the reception */
	ctrl = FUNC0(ksp, KS8695_DRXC);
	/* Enable packet reception */
	FUNC3(ksp, KS8695_DRXC, ctrl | DRXC_RE);
	/* And start the DMA engine */
	FUNC3(ksp, KS8695_DRSC, 0);

	/* All done */
	return 0;
}