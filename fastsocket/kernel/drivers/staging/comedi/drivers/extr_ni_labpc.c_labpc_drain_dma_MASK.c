#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; } ;
struct TYPE_3__ {scalar_t__ stop_src; } ;
struct comedi_async {int /*<<< orphan*/  events; TYPE_1__ cmd; } ;
struct TYPE_4__ {int status1_bits; unsigned int dma_transfer_size; unsigned int count; int /*<<< orphan*/  dma_chan; int /*<<< orphan*/ * dma_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_BLOCK ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned int sample_size ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev)
{
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	int status;
	unsigned long flags;
	unsigned int max_points, num_points, residue, leftover;
	int i;

	status = devpriv->status1_bits;

	flags = FUNC1();
	FUNC3(devpriv->dma_chan);
	/* clear flip-flop to make sure 2-byte registers for
	 * count and address get set correctly */
	FUNC2(devpriv->dma_chan);

	/*  figure out how many points to read */
	max_points = devpriv->dma_transfer_size / sample_size;
	/* residue is the number of points left to be done on the dma
	 * transfer.  It should always be zero at this point unless
	 * the stop_src is set to external triggering.
	 */
	residue = FUNC4(devpriv->dma_chan) / sample_size;
	num_points = max_points - residue;
	if (devpriv->count < num_points && async->cmd.stop_src == TRIG_COUNT)
		num_points = devpriv->count;

	/*  figure out how many points will be stored next time */
	leftover = 0;
	if (async->cmd.stop_src != TRIG_COUNT) {
		leftover = devpriv->dma_transfer_size / sample_size;
	} else if (devpriv->count > num_points) {
		leftover = devpriv->count - num_points;
		if (leftover > max_points)
			leftover = max_points;
	}

	/* write data to comedi buffer */
	for (i = 0; i < num_points; i++) {
		FUNC0(s, devpriv->dma_buffer[i]);
	}
	if (async->cmd.stop_src == TRIG_COUNT)
		devpriv->count -= num_points;

	/*  set address and count for next transfer */
	FUNC6(devpriv->dma_chan, FUNC8(devpriv->dma_buffer));
	FUNC7(devpriv->dma_chan, leftover * sample_size);
	FUNC5(flags);

	async->events |= COMEDI_CB_BLOCK;
}