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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {int irq_dma_bits; scalar_t__ count; } ;

/* Variables and functions */
 unsigned int ADC ; 
 unsigned int CLEAR_INTR_MASK ; 
 int COMEDI_CB_BLOCK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 unsigned int CT0TC ; 
 scalar_t__ DAS1800_SELECT ; 
 scalar_t__ DAS1800_STATUS ; 
 int DMA_ENABLED ; 
 unsigned int FHF ; 
 unsigned int FNE ; 
 unsigned int OVF ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->subdevices + 0;	/* analog input subdevice */
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;
	unsigned int status = FUNC7(dev->iobase + DAS1800_STATUS);

	async->events = 0;
	/*  select adc for base address + 0 */
	FUNC8(ADC, dev->iobase + DAS1800_SELECT);
	/*  dma buffer full */
	if (devpriv->irq_dma_bits & DMA_ENABLED) {
		/*  look for data from dma transfer even if dma terminal count hasn't happened yet */
		FUNC4(dev, s, status);
	} else if (status & FHF) {	/*  if fifo half full */
		FUNC5(dev, s);
	} else if (status & FNE) {	/*  if fifo not empty */
		FUNC6(dev, s);
	}

	async->events |= COMEDI_CB_BLOCK;
	/* if the card's fifo has overflowed */
	if (status & OVF) {
		/*  clear OVF interrupt bit */
		FUNC8(CLEAR_INTR_MASK & ~OVF, dev->iobase + DAS1800_STATUS);
		FUNC0(dev, "DAS1800 FIFO overflow");
		FUNC2(dev, s);
		async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
		FUNC1(dev, s);
		return;
	}
	/*  stop taking data if appropriate */
	/* stop_src TRIG_EXT */
	if (status & CT0TC) {
		/*  clear CT0TC interrupt bit */
		FUNC8(CLEAR_INTR_MASK & ~CT0TC, dev->iobase + DAS1800_STATUS);
		/*  make sure we get all remaining data from board before quitting */
		if (devpriv->irq_dma_bits & DMA_ENABLED)
			FUNC3(dev, s);
		else
			FUNC6(dev, s);
		FUNC2(dev, s);	/* disable hardware conversions */
		async->events |= COMEDI_CB_EOA;
	} else if (cmd->stop_src == TRIG_COUNT && devpriv->count == 0) {	/*  stop_src TRIG_COUNT */
		FUNC2(dev, s);	/* disable hardware conversions */
		async->events |= COMEDI_CB_EOA;
	}

	FUNC1(dev, s);

	return;
}