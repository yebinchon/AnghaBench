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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAddon; } ;

/* Variables and functions */
 scalar_t__ APCI2016_WATCHDOG_ENABLEDISABLE ; 
 int EINVAL ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{

	switch (data[0]) {
	case 0:		/* stop the watchdog */
		FUNC0(0x0, devpriv->i_IobaseAddon + APCI2016_WATCHDOG_ENABLEDISABLE);	/* disable the watchdog */
		break;
	case 1:		/* start the watchdog */
		FUNC0(0x0001,
			devpriv->i_IobaseAddon +
			APCI2016_WATCHDOG_ENABLEDISABLE);
		break;
	case 2:		/* Software trigger */
		FUNC0(0x0201,
			devpriv->i_IobaseAddon +
			APCI2016_WATCHDOG_ENABLEDISABLE);
		break;
	default:
		FUNC1("\nSpecified functionality does not exist\n");
		return -EINVAL;
	}			/*  switch(data[0]) */

	return insn->n;
}