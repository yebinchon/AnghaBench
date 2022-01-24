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
struct sa1100_irda {int /*<<< orphan*/  rxdma; int /*<<< orphan*/  txdma; scalar_t__ open; int /*<<< orphan*/ * irlap; int /*<<< orphan*/ * rxskb; int /*<<< orphan*/  rxbuf_dma; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  HPSIR_MAX_RXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sa1100_irda* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sa1100_irda*) ; 
 int /*<<< orphan*/  FUNC9 (struct sa1100_irda*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct sa1100_irda *si = FUNC5(dev);

	FUNC1(dev->irq);
	FUNC8(si);

	/*
	 * If we have been doing DMA receive, make sure we
	 * tidy that up cleanly.
	 */
	if (si->rxskb) {
		FUNC2(si->dev, si->rxbuf_dma, HPSIR_MAX_RXLEN,
				 DMA_FROM_DEVICE);
		FUNC0(si->rxskb);
		si->rxskb = NULL;
	}

	/* Stop IrLAP */
	if (si->irlap) {
		FUNC4(si->irlap);
		si->irlap = NULL;
	}

	FUNC6(dev);
	si->open = 0;

	/*
	 * Free resources
	 */
	FUNC7(si->txdma);
	FUNC7(si->rxdma);
	FUNC3(dev->irq, dev);

	FUNC9(si, 0);

	return 0;
}