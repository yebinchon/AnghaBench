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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int irq_dma_bits; scalar_t__ dma_current; scalar_t__ dma0; scalar_t__ dma1; int /*<<< orphan*/  dma_current_buf; int /*<<< orphan*/  ai_buf0; int /*<<< orphan*/  ai_buf1; } ;

/* Variables and functions */
 int DMA_DUAL ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			      struct comedi_subdevice *s)
{
	unsigned long flags;
	const int dual_dma = devpriv->irq_dma_bits & DMA_DUAL;

	flags = FUNC0();
	FUNC1(dev, s, devpriv->dma_current,
				  devpriv->dma_current_buf);

	if (dual_dma) {
		/*  switch to other channel and flush it */
		if (devpriv->dma_current == devpriv->dma0) {
			devpriv->dma_current = devpriv->dma1;
			devpriv->dma_current_buf = devpriv->ai_buf1;
		} else {
			devpriv->dma_current = devpriv->dma0;
			devpriv->dma_current_buf = devpriv->ai_buf0;
		}
		FUNC1(dev, s, devpriv->dma_current,
					  devpriv->dma_current_buf);
	}

	FUNC3(flags);

	/*  get any remaining samples in fifo */
	FUNC2(dev, s);

	return;
}