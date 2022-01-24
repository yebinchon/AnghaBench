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
struct TYPE_2__ {int /*<<< orphan*/  tsk_Current; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI2032_DIGITAL_OP ; 
 scalar_t__ APCI2032_DIGITAL_OP_INTERRUPT ; 
 scalar_t__ APCI2032_DIGITAL_OP_INTERRUPT_STATUS ; 
 scalar_t__ APCI2032_DIGITAL_OP_IRQ ; 
 int /*<<< orphan*/  SIGIO ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ui_Type ; 

void FUNC4(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned int ui_DO;

	ui_DO = FUNC0(devpriv->iobase + APCI2032_DIGITAL_OP_IRQ) & 0x1;	/* Check if VCC OR CC interrupt has occured. */

	if (ui_DO == 0) {
		FUNC2("\nInterrupt from unKnown source\n");
	}			/*  if(ui_DO==0) */
	if (ui_DO) {
		/*  Check for Digital Output interrupt Type - 1: Vcc interrupt 2: CC interrupt. */
		ui_Type =
			FUNC0(devpriv->iobase +
			APCI2032_DIGITAL_OP_INTERRUPT_STATUS) & 0x3;
		FUNC1(0x0,
			devpriv->iobase + APCI2032_DIGITAL_OP +
			APCI2032_DIGITAL_OP_INTERRUPT);
		if (ui_Type == 1) {
			/* Sends signal to user space */
			FUNC3(SIGIO, devpriv->tsk_Current, 0);
		}		/*  if (ui_Type==1) */
		else {
			if (ui_Type == 2) {
				/*  Sends signal to user space */
				FUNC3(SIGIO, devpriv->tsk_Current, 0);
			}	/* if (ui_Type==2) */
		}		/* else if (ui_Type==1) */
	}			/* if(ui_DO) */

	return;

}