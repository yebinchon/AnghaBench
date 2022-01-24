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
struct TYPE_3__ {scalar_t__ ai_act_chanlist_pos; scalar_t__ ai_act_chanlist_len; scalar_t__ ai_act_scan; scalar_t__ ai_scans; int /*<<< orphan*/  ai_neverending; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL816_AD_HI ; 
 scalar_t__ PCL816_AD_LO ; 
 scalar_t__ PCL816_CLRINT ; 
 scalar_t__ PCL816_STATUS ; 
 int PCL816_STATUS_DRDY_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;
	int low, hi;
	int timeout = 50;	/* wait max 50us */

	while (timeout--) {
		if (!(FUNC3(dev->iobase + PCL816_STATUS) &
		      PCL816_STATUS_DRDY_MASK))
			break;
		FUNC6(1);
	}
	if (!timeout) {		/*  timeout, bail error */
		FUNC4(0, dev->iobase + PCL816_CLRINT);	/* clear INT request */
		FUNC1(dev, "A/D mode1/3 IRQ without DRDY!");
		FUNC5(dev, s);
		s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
		FUNC2(dev, s);
		return IRQ_HANDLED;

	}

	/*  get the sample */
	low = FUNC3(dev->iobase + PCL816_AD_LO);
	hi = FUNC3(dev->iobase + PCL816_AD_HI);

	FUNC0(s->async, (hi << 8) | low);

	FUNC4(0, dev->iobase + PCL816_CLRINT);	/* clear INT request */

	if (++devpriv->ai_act_chanlist_pos >= devpriv->ai_act_chanlist_len)
		devpriv->ai_act_chanlist_pos = 0;

	if (s->async->cur_chan == 0) {
		devpriv->ai_act_scan++;
	}

	if (!devpriv->ai_neverending)
		if (devpriv->ai_act_scan >= devpriv->ai_scans) {	/* all data sampled */
			/* all data sampled */
			FUNC5(dev, s);
			s->async->events |= COMEDI_CB_EOA;
		}
	FUNC2(dev, s);
	return IRQ_HANDLED;
}