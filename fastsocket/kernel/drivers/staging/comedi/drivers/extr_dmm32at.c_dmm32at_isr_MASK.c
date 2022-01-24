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
struct comedi_device {struct comedi_subdevice* read_subdev; int /*<<< orphan*/  attached; } ;
struct comedi_cmd {int chanlist_len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;
struct TYPE_3__ {int ai_scans_left; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 unsigned char DMM32AT_ADINT ; 
 int /*<<< orphan*/  DMM32AT_AILSB ; 
 int /*<<< orphan*/  DMM32AT_AIMSB ; 
 int /*<<< orphan*/  DMM32AT_CNTRL ; 
 int /*<<< orphan*/  DMM32AT_INTCLOCK ; 
 int DMM32AT_INTRESET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 void* FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	unsigned char intstat;
	unsigned int samp;
	unsigned short msb, lsb;
	int i;
	struct comedi_device *dev = d;

	if (!dev->attached) {
		FUNC1(dev, "spurious interrupt");
		return IRQ_HANDLED;
	}

	intstat = FUNC3(dev, DMM32AT_INTCLOCK);

	if (intstat & DMM32AT_ADINT) {
		struct comedi_subdevice *s = dev->read_subdev;
		struct comedi_cmd *cmd = &s->async->cmd;

		for (i = 0; i < cmd->chanlist_len; i++) {
			/* read data */
			lsb = FUNC3(dev, DMM32AT_AILSB);
			msb = FUNC3(dev, DMM32AT_AIMSB);

			/* invert sign bit to make range unsigned */
			samp = ((msb ^ 0x0080) << 8) + lsb;
			FUNC0(s->async, samp);
		}

		if (devpriv->ai_scans_left != 0xffffffff) {	/* TRIG_COUNT */
			devpriv->ai_scans_left--;
			if (devpriv->ai_scans_left == 0) {
				/* disable further interrupts and clocks */
				FUNC4(dev, DMM32AT_INTCLOCK, 0x0);
				/* set the buffer to be flushed with an EOF */
				s->async->events |= COMEDI_CB_EOA;
			}

		}
		/* flush the buffer */
		FUNC2(dev, s);
	}

	/* reset the interrupt */
	FUNC4(dev, DMM32AT_CNTRL, DMM32AT_INTRESET);
	return IRQ_HANDLED;
}