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
struct TYPE_2__ {size_t next_dma_buf; int* dmabytestomove; int ai_poll_ptr; int last_dma_run; int /*<<< orphan*/  dma; scalar_t__ dma_runs_to_end; scalar_t__ ai_eos; int /*<<< orphan*/ * hwdmaptr; scalar_t__* dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL812_CLRINT ; 
 unsigned long FUNC0 () ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct comedi_device*,struct comedi_subdevice*,short*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;
	unsigned long dma_flags;
	int len, bufptr;
	short *ptr;

#ifdef PCL812_EXTDEBUG
	printk("pcl812 EDBG: BGN: interrupt_pcl812_ai_dma(...)\n");
#endif
	ptr = (short *)devpriv->dmabuf[devpriv->next_dma_buf];
	len = (devpriv->dmabytestomove[devpriv->next_dma_buf] >> 1) -
	    devpriv->ai_poll_ptr;

	devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
	FUNC1(devpriv->dma);
	FUNC8(devpriv->dma, DMA_MODE_READ);
	dma_flags = FUNC0();
	FUNC6(devpriv->dma, devpriv->hwdmaptr[devpriv->next_dma_buf]);
	if (devpriv->ai_eos) {
		FUNC7(devpriv->dma,
			      devpriv->dmabytestomove[devpriv->next_dma_buf]);
	} else {
		if (devpriv->dma_runs_to_end) {
			FUNC7(devpriv->dma,
				      devpriv->dmabytestomove[devpriv->
							      next_dma_buf]);
		} else {
			FUNC7(devpriv->dma, devpriv->last_dma_run);
		}
		devpriv->dma_runs_to_end--;
	}
	FUNC5(dma_flags);
	FUNC2(devpriv->dma);

	FUNC3(0, dev->iobase + PCL812_CLRINT);	/* clear INT request */

	bufptr = devpriv->ai_poll_ptr;
	devpriv->ai_poll_ptr = 0;

	FUNC9(dev, s, ptr, bufptr, len);

#ifdef PCL812_EXTDEBUG
	printk("pcl812 EDBG: END: interrupt_pcl812_ai_dma(...)\n");
#endif
	return IRQ_HANDLED;
}