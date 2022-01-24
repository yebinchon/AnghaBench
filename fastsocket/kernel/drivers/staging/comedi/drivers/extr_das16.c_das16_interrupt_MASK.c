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
struct comedi_device {scalar_t__ attached; int /*<<< orphan*/  spinlock; scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct TYPE_4__ {scalar_t__ dma_chan; int control_state; int dma_transfer_size; int adc_byte_count; int current_buffer; scalar_t__ timer_mode; int /*<<< orphan*/ * dma_buffer; int /*<<< orphan*/ * dma_buffer_addr; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 scalar_t__ DAS1600_CONV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DMA_ENABLE ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static void FUNC14(struct comedi_device *dev)
{
	unsigned long dma_flags, spin_flags;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async;
	struct comedi_cmd *cmd;
	int num_bytes, residue;
	int buffer_index;

	if (dev->attached == 0) {
		FUNC5(dev, "premature interrupt");
		return;
	}
	/*  initialize async here to make sure it is not NULL */
	async = s->async;
	cmd = &async->cmd;

	if (devpriv->dma_chan == 0) {
		FUNC5(dev, "interrupt with no dma channel?");
		return;
	}

	FUNC12(&dev->spinlock, spin_flags);
	if ((devpriv->control_state & DMA_ENABLE) == 0) {
		FUNC13(&dev->spinlock, spin_flags);
		FUNC0("interrupt while dma disabled?\n");
		return;
	}

	dma_flags = FUNC3();
	FUNC4(devpriv->dma_chan);
	residue = FUNC6(dev);

	/*  figure out how many points to read */
	if (residue > devpriv->dma_transfer_size) {
		FUNC5(dev, "residue > transfer size!\n");
		async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
		num_bytes = 0;
	} else
		num_bytes = devpriv->dma_transfer_size - residue;

	if (cmd->stop_src == TRIG_COUNT && num_bytes >= devpriv->adc_byte_count) {
		num_bytes = devpriv->adc_byte_count;
		async->events |= COMEDI_CB_EOA;
	}

	buffer_index = devpriv->current_buffer;
	devpriv->current_buffer = (devpriv->current_buffer + 1) % 2;
	devpriv->adc_byte_count -= num_bytes;

	/*  figure out how many bytes for next transfer */
	if (cmd->stop_src == TRIG_COUNT && devpriv->timer_mode == 0 &&
	    devpriv->dma_transfer_size > devpriv->adc_byte_count)
		devpriv->dma_transfer_size = devpriv->adc_byte_count;

	/*  re-enable  dma */
	if ((async->events & COMEDI_CB_EOA) == 0) {
		FUNC10(devpriv->dma_chan,
			     devpriv->dma_buffer_addr[devpriv->current_buffer]);
		FUNC11(devpriv->dma_chan, devpriv->dma_transfer_size);
		FUNC7(devpriv->dma_chan);
		/* reenable conversions for das1600 mode, (stupid hardware) */
		if (thisboard->size > 0x400 && devpriv->timer_mode == 0) {
			FUNC8(0x00, dev->iobase + DAS1600_CONV);
		}
	}
	FUNC9(dma_flags);

	FUNC13(&dev->spinlock, spin_flags);

	FUNC2(s,
				  devpriv->dma_buffer[buffer_index], num_bytes);

	FUNC1(dev, s);
}