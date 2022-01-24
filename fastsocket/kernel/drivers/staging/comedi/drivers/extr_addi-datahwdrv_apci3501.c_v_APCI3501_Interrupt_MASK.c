#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; int /*<<< orphan*/  tsk_Current; } ;

/* Variables and functions */
 scalar_t__ APCI3501_TCW_IRQ ; 
 scalar_t__ APCI3501_TCW_PROG ; 
 scalar_t__ APCI3501_TCW_TRIG_STATUS ; 
 scalar_t__ APCI3501_WATCHDOG ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(int irq, void *d)
{
	int i_temp;
	struct comedi_device *dev = d;
	unsigned int ui_Timer_AOWatchdog;
	unsigned long ul_Command1;
	/*  Disable Interrupt */
	ul_Command1 =
		FUNC1(devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

	ul_Command1 = (ul_Command1 & 0xFFFFF9FDul);
	FUNC2(ul_Command1,
		devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);

	ui_Timer_AOWatchdog =
		FUNC1(devpriv->iobase + APCI3501_WATCHDOG +
		APCI3501_TCW_IRQ) & 0x1;

	if ((!ui_Timer_AOWatchdog)) {
		FUNC0(dev, "IRQ from unknow source");
		return;
	}

/*
* Enable Interrupt Send a signal to from kernel to user space
*/
	FUNC3(SIGIO, devpriv->tsk_Current, 0);
	ul_Command1 =
		FUNC1(devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
	ul_Command1 = ((ul_Command1 & 0xFFFFF9FDul) | 1 << 1);
	FUNC2(ul_Command1,
		devpriv->iobase + APCI3501_WATCHDOG + APCI3501_TCW_PROG);
	i_temp = FUNC1(devpriv->iobase + APCI3501_WATCHDOG +
		APCI3501_TCW_TRIG_STATUS) & 0x1;
	return;
}