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
struct TYPE_2__ {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI2032_DIGITAL_OP_WATCHDOG ; 
 scalar_t__ APCI2032_TCW_TRIG_STATUS ; 
 TYPE_1__* devpriv ; 
 int FUNC0 (scalar_t__) ; 

int FUNC1(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{

	data[0] =
		FUNC0(devpriv->iobase + APCI2032_DIGITAL_OP_WATCHDOG +
		APCI2032_TCW_TRIG_STATUS) & 0x1;
	return insn->n;
}