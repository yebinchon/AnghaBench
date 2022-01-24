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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int events; scalar_t__ cur_chan; } ;
struct TYPE_3__ {scalar_t__ ai_act_scan; scalar_t__ ai_scans; int /*<<< orphan*/  ai_neverending; scalar_t__ ai_is16b; } ;

/* Variables and functions */
 int ACL8216_DRDY ; 
 scalar_t__ ACL8216_STATUS ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PCL812_AD_HI ; 
 scalar_t__ PCL812_AD_LO ; 
 scalar_t__ PCL812_CLRINT ; 
 int PCL812_DRDY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	char err = 1;
	unsigned int mask, timeout;
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;

	s->async->events = 0;

	timeout = 50;		/* wait max 50us, it must finish under 33us */
	if (devpriv->ai_is16b) {
		mask = 0xffff;
		while (timeout--) {
			if (!(FUNC2(dev->iobase + ACL8216_STATUS) & ACL8216_DRDY)) {
				err = 0;
				break;
			}
			FUNC6(1);
		}
	} else {
		mask = 0x0fff;
		while (timeout--) {
			if (!(FUNC2(dev->iobase + PCL812_AD_HI) & PCL812_DRDY)) {
				err = 0;
				break;
			}
			FUNC6(1);
		}
	}

	if (err) {
		FUNC5
		    ("comedi%d: pcl812: (%s at 0x%lx) A/D cmd IRQ without DRDY!\n",
		     dev->minor, dev->board_name, dev->iobase);
		FUNC4(dev, s);
		s->async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
		FUNC1(dev, s);
		return IRQ_HANDLED;
	}

	FUNC0(s->async,
		       ((FUNC2(dev->iobase + PCL812_AD_HI) << 8) |
			FUNC2(dev->iobase + PCL812_AD_LO)) & mask);

	FUNC3(0, dev->iobase + PCL812_CLRINT);	/* clear INT request */

	if (s->async->cur_chan == 0) {	/* one scan done */
		devpriv->ai_act_scan++;
		if (!(devpriv->ai_neverending))
			if (devpriv->ai_act_scan >= devpriv->ai_scans) {	/* all data sampled */
				FUNC4(dev, s);
				s->async->events |= COMEDI_CB_EOA;
			}
	}

	FUNC1(dev, s);
	return IRQ_HANDLED;
}