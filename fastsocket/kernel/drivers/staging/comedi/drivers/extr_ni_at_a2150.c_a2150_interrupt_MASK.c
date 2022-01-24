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
struct comedi_device {scalar_t__ attached; scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int const dma_transfer_size; unsigned int count; short* dma_buffer; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int COMEDI_CB_BLOCK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int DMA_TC_BIT ; 
 scalar_t__ DMA_TC_CLEAR_REG ; 
 int INTR_BIT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int OVFL_BIT ; 
 scalar_t__ STATUS_REG ; 
 scalar_t__ TRIG_COUNT ; 
 scalar_t__ TRIG_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,short) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int const FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (short*) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *d)
{
	int i;
	int status;
	unsigned long flags;
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async;
	struct comedi_cmd *cmd;
	unsigned int max_points, num_points, residue, leftover;
	short dpnt;
	static const int sample_size = sizeof(devpriv->dma_buffer[0]);

	if (dev->attached == 0) {
		FUNC4(dev, "premature interrupt");
		return IRQ_HANDLED;
	}
	/*  initialize async here to make sure s is not NULL */
	async = s->async;
	async->events = 0;
	cmd = &async->cmd;

	status = FUNC9(dev->iobase + STATUS_REG);

	if ((status & INTR_BIT) == 0) {
		FUNC4(dev, "spurious interrupt");
		return IRQ_NONE;
	}

	if (status & OVFL_BIT) {
		FUNC4(dev, "fifo overflow");
		FUNC0(dev, s);
		async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
	}

	if ((status & DMA_TC_BIT) == 0) {
		FUNC4(dev, "caught non-dma interrupt?  Aborting.");
		FUNC0(dev, s);
		async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
		FUNC5(dev, s);
		return IRQ_HANDLED;
	}

	flags = FUNC2();
	FUNC6(devpriv->dma);
	/* clear flip-flop to make sure 2-byte registers for
	 * count and address get set correctly */
	FUNC3(devpriv->dma);

	/*  figure out how many points to read */
	max_points = devpriv->dma_transfer_size / sample_size;
	/* residue is the number of points left to be done on the dma
	 * transfer.  It should always be zero at this point unless
	 * the stop_src is set to external triggering.
	 */
	residue = FUNC8(devpriv->dma) / sample_size;
	num_points = max_points - residue;
	if (devpriv->count < num_points && cmd->stop_src == TRIG_COUNT)
		num_points = devpriv->count;

	/*  figure out how many points will be stored next time */
	leftover = 0;
	if (cmd->stop_src == TRIG_NONE) {
		leftover = devpriv->dma_transfer_size / sample_size;
	} else if (devpriv->count > max_points) {
		leftover = devpriv->count - max_points;
		if (leftover > max_points)
			leftover = max_points;
	}
	/* there should only be a residue if collection was stopped by having
	 * the stop_src set to an external trigger, in which case there
	 * will be no more data
	 */
	if (residue)
		leftover = 0;

	for (i = 0; i < num_points; i++) {
		/* write data point to comedi buffer */
		dpnt = devpriv->dma_buffer[i];
		/*  convert from 2's complement to unsigned coding */
		dpnt ^= 0x8000;
		FUNC1(s, dpnt);
		if (cmd->stop_src == TRIG_COUNT) {
			if (--devpriv->count == 0) {	/* end of acquisition */
				FUNC0(dev, s);
				async->events |= COMEDI_CB_EOA;
				break;
			}
		}
	}
	/*  re-enable  dma */
	if (leftover) {
		FUNC12(devpriv->dma, FUNC14(devpriv->dma_buffer));
		FUNC13(devpriv->dma, leftover * sample_size);
		FUNC7(devpriv->dma);
	}
	FUNC11(flags);

	async->events |= COMEDI_CB_BLOCK;

	FUNC5(dev, s);

	/* clear interrupt */
	FUNC10(0x00, dev->iobase + DMA_TC_CLEAR_REG);

	return IRQ_HANDLED;
}