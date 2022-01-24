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
struct TYPE_2__ {scalar_t__ b_TimerSelectMode; int b_ModeSelectRegister; scalar_t__ iobase; scalar_t__ i_IobaseAmcc; } ;

/* Variables and functions */
 scalar_t__ ADDIDATA_COUNTER ; 
 scalar_t__ ADDIDATA_TIMER ; 
 scalar_t__ ADDIDATA_WATCHDOG ; 
 scalar_t__ APCI1564_DIGITAL_OP_WATCHDOG ; 
 scalar_t__ APCI1564_TCW_PROG ; 
 scalar_t__ APCI1564_TIMER ; 
 int EINVAL ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct comedi_device *dev,
	struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ul_Command1 = 0;
	if (devpriv->b_TimerSelectMode == ADDIDATA_WATCHDOG) {
		switch (data[1]) {
		case 0:	/* stop the watchdog */
			FUNC1(0x0, devpriv->i_IobaseAmcc + APCI1564_DIGITAL_OP_WATCHDOG + APCI1564_TCW_PROG);	/* disable the watchdog */
			break;
		case 1:	/* start the watchdog */
			FUNC1(0x0001,
				devpriv->i_IobaseAmcc +
				APCI1564_DIGITAL_OP_WATCHDOG +
				APCI1564_TCW_PROG);
			break;
		case 2:	/* Software trigger */
			FUNC1(0x0201,
				devpriv->i_IobaseAmcc +
				APCI1564_DIGITAL_OP_WATCHDOG +
				APCI1564_TCW_PROG);
			break;
		default:
			FUNC2("\nSpecified functionality does not exist\n");
			return -EINVAL;
		}		/*  switch (data[1]) */
	}			/*  if  (devpriv->b_TimerSelectMode==ADDIDATA_WATCHDOG) */
	if (devpriv->b_TimerSelectMode == ADDIDATA_TIMER) {
		if (data[1] == 1) {
			ul_Command1 =
				FUNC0(devpriv->i_IobaseAmcc + APCI1564_TIMER +
				APCI1564_TCW_PROG);
			ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x1UL;

			/* Enable the Timer */
			FUNC1(ul_Command1,
				devpriv->i_IobaseAmcc + APCI1564_TIMER +
				APCI1564_TCW_PROG);
		}		/*  if  (data[1]==1) */
		else if (data[1] == 0) {
			/* Stop The Timer */

			ul_Command1 =
				FUNC0(devpriv->i_IobaseAmcc + APCI1564_TIMER +
				APCI1564_TCW_PROG);
			ul_Command1 = ul_Command1 & 0xFFFFF9FEUL;
			FUNC1(ul_Command1,
				devpriv->i_IobaseAmcc + APCI1564_TIMER +
				APCI1564_TCW_PROG);
		}		/*  else if(data[1]==0) */
	}			/*  if  (devpriv->b_TimerSelectMode==ADDIDATA_TIMER) */
	if (devpriv->b_TimerSelectMode == ADDIDATA_COUNTER) {
		ul_Command1 =
			FUNC0(devpriv->iobase + ((devpriv->b_ModeSelectRegister -
					1) * 0x20) + APCI1564_TCW_PROG);
		if (data[1] == 1) {
			/* Start the Counter subdevice */
			ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x1UL;
		}		/*  if  (data[1] == 1) */
		else if (data[1] == 0) {
			/*  Stops the Counter subdevice */
			ul_Command1 = 0;

		}		/*  else if  (data[1] == 0) */
		else if (data[1] == 2) {
			/*  Clears the Counter subdevice */
			ul_Command1 = (ul_Command1 & 0xFFFFF9FFUL) | 0x400;
		}		/*  else if  (data[1] == 3) */
		FUNC1(ul_Command1,
			devpriv->iobase + ((devpriv->b_ModeSelectRegister -
					1) * 0x20) + APCI1564_TCW_PROG);
	}			/*  if (devpriv->b_TimerSelectMode==ADDIDATA_COUNTER) */
	return insn->n;
}