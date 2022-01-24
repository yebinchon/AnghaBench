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
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {int irq_dma_bits; int /*<<< orphan*/  dma1; int /*<<< orphan*/  dma_transfer_size; int /*<<< orphan*/  ai_buf1; int /*<<< orphan*/  dma0; int /*<<< orphan*/  ai_buf0; int /*<<< orphan*/  dma_current_buf; int /*<<< orphan*/  dma_current; } ;

/* Variables and functions */
 int DMA_DUAL ; 
 int DMA_ENABLED ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev, struct comedi_cmd cmd)
{
	unsigned long lock_flags;
	const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

	if ((devpriv->irq_dma_bits & DMA_ENABLED) == 0)
		return;

	/* determine a reasonable dma transfer size */
	devpriv->dma_transfer_size = FUNC7(&cmd);
	lock_flags = FUNC0();
	FUNC2(devpriv->dma0);
	/* clear flip-flop to make sure 2-byte registers for
	 * count and address get set correctly */
	FUNC1(devpriv->dma0);
	FUNC5(devpriv->dma0, FUNC8(devpriv->ai_buf0));
	/*  set appropriate size of transfer */
	FUNC6(devpriv->dma0, devpriv->dma_transfer_size);
	devpriv->dma_current = devpriv->dma0;
	devpriv->dma_current_buf = devpriv->ai_buf0;
	FUNC3(devpriv->dma0);
	/*  set up dual dma if appropriate */
	if (dual_dma) {
		FUNC2(devpriv->dma1);
		/* clear flip-flop to make sure 2-byte registers for
		 * count and address get set correctly */
		FUNC1(devpriv->dma1);
		FUNC5(devpriv->dma1, FUNC8(devpriv->ai_buf1));
		/*  set appropriate size of transfer */
		FUNC6(devpriv->dma1, devpriv->dma_transfer_size);
		FUNC3(devpriv->dma1);
	}
	FUNC4(lock_flags);

	return;
}