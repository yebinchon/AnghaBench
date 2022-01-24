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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DMA_BASE ; 
 scalar_t__ DMA_DISR ; 
 int IMX_DMA_CHANNELS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	int i, disr;

#ifdef CONFIG_ARCH_MX2
	dma_err_handler(irq, dev_id);
#endif

	disr = FUNC0(DMA_BASE + DMA_DISR);

	FUNC4("imxdma: dma_irq_handler called, disr=0x%08x\n",
		     disr);

	FUNC1(disr, DMA_BASE + DMA_DISR);
	for (i = 0; i < IMX_DMA_CHANNELS; i++) {
		if (disr & (1 << i))
			FUNC3(i);
	}

	return IRQ_HANDLED;
}