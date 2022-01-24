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
struct TYPE_2__ {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI2200_DIGITAL_OP ; 
 scalar_t__ APCI2200_WATCHDOG ; 
 scalar_t__ APCI2200_WATCHDOG_ENABLEDISABLE ; 
 scalar_t__ APCI2200_WATCHDOG_RELOAD_VALUE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

int FUNC1(struct comedi_device *dev)
{
	FUNC0(0x0, devpriv->iobase + APCI2200_DIGITAL_OP);	/* RESETS THE DIGITAL OUTPUTS */
	FUNC0(0x0,
		devpriv->iobase + APCI2200_WATCHDOG +
		APCI2200_WATCHDOG_ENABLEDISABLE);
	FUNC0(0x0,
		devpriv->iobase + APCI2200_WATCHDOG +
		APCI2200_WATCHDOG_RELOAD_VALUE);
	FUNC0(0x0,
		devpriv->iobase + APCI2200_WATCHDOG +
		APCI2200_WATCHDOG_RELOAD_VALUE + 2);
	return 0;
}