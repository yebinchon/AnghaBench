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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ io_addr; } ;
struct TYPE_3__ {int events; } ;

/* Variables and functions */
 int COMEDI_CB_BLOCK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 scalar_t__ DPR_Intr_Flag ; 
 unsigned int DT3000_ADFULL ; 
 unsigned int DT3000_ADHWERR ; 
 unsigned int DT3000_ADSWERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int debug_n_ints ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s;
	unsigned int status;

	if (!dev->attached) {
		return IRQ_NONE;
	}

	s = dev->subdevices + 0;
	status = FUNC4(devpriv->io_addr + DPR_Intr_Flag);
#ifdef DEBUG
	debug_intr_flags(status);
#endif

	if (status & DT3000_ADFULL) {
		FUNC3(dev, s);
		s->async->events |= COMEDI_CB_BLOCK;
	}

	if (status & (DT3000_ADSWERR | DT3000_ADHWERR)) {
		s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_EOA;
	}

	debug_n_ints++;
	if (debug_n_ints >= 10) {
		FUNC2(dev, s);
		s->async->events |= COMEDI_CB_EOA;
	}

	FUNC0(dev, s);
	return IRQ_HANDLED;
}