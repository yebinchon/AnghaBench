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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int irq_dma_bits; scalar_t__ dma_current; scalar_t__ dma0; scalar_t__ dma1; int /*<<< orphan*/  ai_buf0; int /*<<< orphan*/  dma_current_buf; int /*<<< orphan*/  ai_buf1; int /*<<< orphan*/  dma_transfer_size; } ;

/* Variables and functions */
 unsigned int CLEAR_INTR_MASK ; 
 scalar_t__ DAS1800_STATUS ; 
 unsigned int DMATC ; 
 int DMA_DUAL ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev,
			       struct comedi_subdevice *s, unsigned int status)
{
	unsigned long flags;
	const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

	flags = FUNC0();
	FUNC1(dev, s, devpriv->dma_current,
				  devpriv->dma_current_buf);
	/*  re-enable  dma channel */
	FUNC5(devpriv->dma_current,
		     FUNC7(devpriv->dma_current_buf));
	FUNC6(devpriv->dma_current, devpriv->dma_transfer_size);
	FUNC2(devpriv->dma_current);
	FUNC4(flags);

	if (status & DMATC) {
		/*  clear DMATC interrupt bit */
		FUNC3(CLEAR_INTR_MASK & ~DMATC, dev->iobase + DAS1800_STATUS);
		/*  switch dma channels for next time, if appropriate */
		if (dual_dma) {
			/*  read data from the other channel next time */
			if (devpriv->dma_current == devpriv->dma0) {
				devpriv->dma_current = devpriv->dma1;
				devpriv->dma_current_buf = devpriv->ai_buf1;
			} else {
				devpriv->dma_current = devpriv->dma0;
				devpriv->dma_current_buf = devpriv->ai_buf0;
			}
		}
	}

	return;
}