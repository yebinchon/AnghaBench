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
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int /*<<< orphan*/  scan_begin_arg; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ PCL711_CLRINTR ; 
 scalar_t__ PCL711_CTR1 ; 
 scalar_t__ PCL711_CTR2 ; 
 scalar_t__ PCL711_CTRCTL ; 
 scalar_t__ PCL711_MODE ; 
 int /*<<< orphan*/  TRIG_ROUND_NEAREST ; 
 scalar_t__ TRIG_TIMER ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i8253_osc_base ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s)
{
	int timer1, timer2;
	struct comedi_cmd *cmd = &s->async->cmd;

	FUNC2(dev, cmd->chanlist[0]);

	if (cmd->scan_begin_src == TRIG_TIMER) {
		/*
		 *  Set timers
		 *      timer chip is an 8253, with timers 1 and 2
		 *      cascaded
		 *  0x74 = Select Counter 1 | LSB/MSB | Mode=2 | Binary
		 *        Mode 2 = Rate generator
		 *
		 *  0xb4 = Select Counter 2 | LSB/MSB | Mode=2 | Binary
		 */

		FUNC0(i8253_osc_base, &timer1, &timer2,
					  &cmd->scan_begin_arg,
					  TRIG_ROUND_NEAREST);

		FUNC1(0x74, dev->iobase + PCL711_CTRCTL);
		FUNC1(timer1 & 0xff, dev->iobase + PCL711_CTR1);
		FUNC1((timer1 >> 8) & 0xff, dev->iobase + PCL711_CTR1);
		FUNC1(0xb4, dev->iobase + PCL711_CTRCTL);
		FUNC1(timer2 & 0xff, dev->iobase + PCL711_CTR2);
		FUNC1((timer2 >> 8) & 0xff, dev->iobase + PCL711_CTR2);

		/* clear pending interrupts (just in case) */
		FUNC1(0, dev->iobase + PCL711_CLRINTR);

		/*
		 *  Set mode to IRQ transfer
		 */
		FUNC1(devpriv->mode | 6, dev->iobase + PCL711_MODE);
	} else {
		/* external trigger */
		FUNC1(devpriv->mode | 3, dev->iobase + PCL711_MODE);
	}

	return 0;
}