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
struct TYPE_4__ {int events; scalar_t__ cur_chan; } ;
struct TYPE_3__ {int* act_chanlist; size_t act_chanlist_pos; scalar_t__ ai_act_scan; int /*<<< orphan*/  neverending_ai; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL818_FI_DATAHI ; 
 scalar_t__ PCL818_FI_DATALO ; 
 scalar_t__ PCL818_FI_INTCLR ; 
 scalar_t__ PCL818_FI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;
	int i, len, lo;

	FUNC4(0, dev->iobase + PCL818_FI_INTCLR);	/*  clear fifo int request */

	lo = FUNC3(dev->iobase + PCL818_FI_STATUS);

	if (lo & 4) {
		FUNC1(dev, "A/D mode1/3 FIFO overflow!");
		FUNC5(dev, s);
		s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
		FUNC2(dev, s);
		return IRQ_HANDLED;
	}

	if (lo & 1) {
		FUNC1(dev, "A/D mode1/3 FIFO interrupt without data!");
		FUNC5(dev, s);
		s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
		FUNC2(dev, s);
		return IRQ_HANDLED;
	}

	if (lo & 2) {
		len = 512;
	} else {
		len = 0;
	}

	for (i = 0; i < len; i++) {
		lo = FUNC3(dev->iobase + PCL818_FI_DATALO);
		if ((lo & 0xf) != devpriv->act_chanlist[devpriv->act_chanlist_pos]) {	/*  dropout! */
			FUNC6
			    ("comedi: A/D mode1/3 FIFO - channel dropout %d!=%d !\n",
			     (lo & 0xf),
			     devpriv->act_chanlist[devpriv->act_chanlist_pos]);
			FUNC5(dev, s);
			s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
			FUNC2(dev, s);
			return IRQ_HANDLED;
		}

		FUNC0(s->async, (lo >> 4) | (FUNC3(dev->iobase + PCL818_FI_DATAHI) << 4));	/*  get one sample */

		if (s->async->cur_chan == 0) {
			devpriv->ai_act_scan--;
		}

		if (!devpriv->neverending_ai)
			if (devpriv->ai_act_scan == 0) {	/* all data sampled */
				FUNC5(dev, s);
				s->async->events |= COMEDI_CB_EOA;
				FUNC2(dev, s);
				return IRQ_HANDLED;
			}
	}

	if (len > 0)
		FUNC2(dev, s);
	return IRQ_HANDLED;
}