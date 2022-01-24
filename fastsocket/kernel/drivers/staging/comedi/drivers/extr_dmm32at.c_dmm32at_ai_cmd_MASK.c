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
struct comedi_subdevice {int n_chan; TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned char chanlist_len; scalar_t__ stop_src; int stop_arg; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_4__ {int ai_scans_left; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DMM32AT_ADINT ; 
 int /*<<< orphan*/  DMM32AT_AICONF ; 
 int /*<<< orphan*/  DMM32AT_AIHIGH ; 
 int /*<<< orphan*/  DMM32AT_AILOW ; 
 int /*<<< orphan*/  DMM32AT_AIRBACK ; 
 int /*<<< orphan*/  DMM32AT_CNTRL ; 
 int /*<<< orphan*/  DMM32AT_CONV ; 
 int /*<<< orphan*/  DMM32AT_FIFOCNTRL ; 
 int DMM32AT_FIFORESET ; 
 int /*<<< orphan*/  DMM32AT_INTCLOCK ; 
 int DMM32AT_INTRESET ; 
 int DMM32AT_SCANENABLE ; 
 unsigned char DMM32AT_STATUS ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ TRIG_COUNT ; 
 TYPE_2__* devpriv ; 
 int* dmm32at_rangebits ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_cmd *cmd = &s->async->cmd;
	int i, range;
	unsigned char chanlo, chanhi, status;

	if (!cmd->chanlist)
		return -EINVAL;

	/* get the channel list and range */
	chanlo = FUNC0(cmd->chanlist[0]) & (s->n_chan - 1);
	chanhi = chanlo + cmd->chanlist_len - 1;
	if (chanhi >= s->n_chan)
		return -EINVAL;
	range = FUNC1(cmd->chanlist[0]);

	/* reset fifo */
	FUNC4(dev, DMM32AT_FIFOCNTRL, DMM32AT_FIFORESET);

	/* set scan enable */
	FUNC4(dev, DMM32AT_FIFOCNTRL, DMM32AT_SCANENABLE);

	/* write the ai channel range regs */
	FUNC4(dev, DMM32AT_AILOW, chanlo);
	FUNC4(dev, DMM32AT_AIHIGH, chanhi);

	/* set the range bits */
	FUNC4(dev, DMM32AT_AICONF, dmm32at_rangebits[range]);

	/* reset the interrupt just in case */
	FUNC4(dev, DMM32AT_CNTRL, DMM32AT_INTRESET);

	if (cmd->stop_src == TRIG_COUNT)
		devpriv->ai_scans_left = cmd->stop_arg;
	else {			/* TRIG_NONE */
		devpriv->ai_scans_left = 0xffffffff;	/* indicates TRIG_NONE to isr */
	}

	/* wait for circuit to settle */
	for (i = 0; i < 40000; i++) {
		status = FUNC3(dev, DMM32AT_AIRBACK);
		if ((status & DMM32AT_STATUS) == 0)
			break;
	}
	if (i == 40000) {
		FUNC5("timeout\n");
		return -ETIMEDOUT;
	}

	if (devpriv->ai_scans_left > 1) {
		/* start the clock and enable the interrupts */
		FUNC2(dev, cmd->scan_begin_arg);
	} else {
		/* start the interrups and initiate a single scan */
		FUNC4(dev, DMM32AT_INTCLOCK, DMM32AT_ADINT);
		FUNC4(dev, DMM32AT_CONV, 0xff);
	}

/* 	printk("dmmat32 in command\n"); */

/* 	for(i=0;i<cmd->chanlist_len;i++) */
/* 		comedi_buf_put(s->async,i*100); */

/* 	s->async->events |= COMEDI_CB_EOA; */
/* 	comedi_event(dev, s); */

	return 0;

}