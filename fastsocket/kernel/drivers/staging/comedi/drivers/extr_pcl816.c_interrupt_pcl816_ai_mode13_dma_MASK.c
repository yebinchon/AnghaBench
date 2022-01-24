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
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int next_dma_buf; int dma_runs_to_end; int* hwdmasize; int last_dma_run; int ai_poll_ptr; scalar_t__* dmabuf; int /*<<< orphan*/  dma; int /*<<< orphan*/ * hwdmaptr; scalar_t__ ai_neverending; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL816_CLRINT ; 
 unsigned long FUNC0 () ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*,short*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;
	int len, bufptr, this_dma_buf;
	unsigned long dma_flags;
	short *ptr;

	FUNC1(devpriv->dma);
	this_dma_buf = devpriv->next_dma_buf;

	if ((devpriv->dma_runs_to_end > -1) || devpriv->ai_neverending) {	/*  switch dma bufs */

		devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
		FUNC7(devpriv->dma, DMA_MODE_READ);
		dma_flags = FUNC0();
/* clear_dma_ff (devpriv->dma); */
		FUNC5(devpriv->dma,
			     devpriv->hwdmaptr[devpriv->next_dma_buf]);
		if (devpriv->dma_runs_to_end) {
			FUNC6(devpriv->dma,
				      devpriv->hwdmasize[devpriv->
							 next_dma_buf]);
		} else {
			FUNC6(devpriv->dma, devpriv->last_dma_run);
		}
		FUNC4(dma_flags);
		FUNC2(devpriv->dma);
	}

	devpriv->dma_runs_to_end--;
	FUNC3(0, dev->iobase + PCL816_CLRINT);	/* clear INT request */

	ptr = (short *)devpriv->dmabuf[this_dma_buf];

	len = (devpriv->hwdmasize[0] >> 1) - devpriv->ai_poll_ptr;
	bufptr = devpriv->ai_poll_ptr;
	devpriv->ai_poll_ptr = 0;

	FUNC8(dev, s, ptr, bufptr, len);
	return IRQ_HANDLED;
}