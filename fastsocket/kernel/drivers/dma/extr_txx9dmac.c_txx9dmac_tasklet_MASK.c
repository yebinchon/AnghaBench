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
typedef  int u32 ;
struct txx9dmac_dev {int irq; struct txx9dmac_chan** chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct txx9dmac_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  chan; TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int /*<<< orphan*/  MCR ; 
 int TXX9_DMA_CSR_ABCHC ; 
 int TXX9_DMA_CSR_NCHNC ; 
 int TXX9_DMA_CSR_NTRNFC ; 
 int TXX9_DMA_MAX_NR_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct txx9dmac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct txx9dmac_chan*) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	int irq;
	u32 csr;
	struct txx9dmac_chan *dc;

	struct txx9dmac_dev *ddev = (struct txx9dmac_dev *)data;
	u32 mcr;
	int i;

	mcr = FUNC3(ddev, MCR);
	FUNC2(ddev->chan[0]->dma.dev, "tasklet: mcr=%x\n", mcr);
	for (i = 0; i < TXX9_DMA_MAX_NR_CHANNELS; i++) {
		if ((mcr >> (24 + i)) & 0x11) {
			dc = ddev->chan[i];
			csr = FUNC1(dc, CSR);
			FUNC2(FUNC0(&dc->chan), "tasklet: status=%x\n",
				 csr);
			FUNC5(&dc->lock);
			if (csr & (TXX9_DMA_CSR_ABCHC | TXX9_DMA_CSR_NCHNC |
				   TXX9_DMA_CSR_NTRNFC))
				FUNC7(dc);
			FUNC6(&dc->lock);
		}
	}
	irq = ddev->irq;

	FUNC4(irq);
}