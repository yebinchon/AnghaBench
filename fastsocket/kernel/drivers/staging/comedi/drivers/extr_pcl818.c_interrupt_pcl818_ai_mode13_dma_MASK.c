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
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int events; } ;
struct TYPE_3__ {int next_dma_buf; int dma_runs_to_end; int* hwdmasize; int last_dma_run; short* act_chanlist; size_t act_chanlist_pos; size_t act_chanlist_len; scalar_t__ ai_act_scan; scalar_t__ neverending_ai; scalar_t__* dmabuf; int /*<<< orphan*/  dma; int /*<<< orphan*/ * hwdmaptr; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL818_CLRINT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;
	int i, len, bufptr;
	unsigned long flags;
	short *ptr;

	FUNC3(devpriv->dma);
	devpriv->next_dma_buf = 1 - devpriv->next_dma_buf;
	if ((devpriv->dma_runs_to_end) > -1 || devpriv->neverending_ai) {	/*  switch dma bufs */
		FUNC11(devpriv->dma, DMA_MODE_READ);
		flags = FUNC0();
		FUNC9(devpriv->dma,
			     devpriv->hwdmaptr[devpriv->next_dma_buf]);
		if (devpriv->dma_runs_to_end || devpriv->neverending_ai) {
			FUNC10(devpriv->dma,
				      devpriv->hwdmasize[devpriv->
							 next_dma_buf]);
		} else {
			FUNC10(devpriv->dma, devpriv->last_dma_run);
		}
		FUNC8(flags);
		FUNC4(devpriv->dma);
	}
	FUNC7("comedi: A/D mode1/3 IRQ \n");

	devpriv->dma_runs_to_end--;
	FUNC5(0, dev->iobase + PCL818_CLRINT);	/* clear INT request */
	ptr = (short *)devpriv->dmabuf[1 - devpriv->next_dma_buf];

	len = devpriv->hwdmasize[0] >> 1;
	bufptr = 0;

	for (i = 0; i < len; i++) {
		if ((ptr[bufptr] & 0xf) != devpriv->act_chanlist[devpriv->act_chanlist_pos]) {	/*  dropout! */
			FUNC7
			    ("comedi: A/D mode1/3 DMA - channel dropout %d(card)!=%d(chanlist) at %d !\n",
			     (ptr[bufptr] & 0xf),
			     devpriv->act_chanlist[devpriv->act_chanlist_pos],
			     devpriv->act_chanlist_pos);
			FUNC6(dev, s);
			s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
			FUNC2(dev, s);
			return IRQ_HANDLED;
		}

		FUNC1(s->async, ptr[bufptr++] >> 4);	/*  get one sample */

		devpriv->act_chanlist_pos++;
		if (devpriv->act_chanlist_pos >= devpriv->act_chanlist_len) {
			devpriv->ai_act_scan--;
			devpriv->act_chanlist_pos = 0;
		}

		if (!devpriv->neverending_ai)
			if (devpriv->ai_act_scan == 0) {	/* all data sampled */
				FUNC6(dev, s);
				s->async->events |= COMEDI_CB_EOA;
				FUNC2(dev, s);
				/*  printk("done int ai13 dma\n"); */
				return IRQ_HANDLED;
			}
	}

	if (len > 0)
		FUNC2(dev, s);
	return IRQ_HANDLED;
}