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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_IobaseAmcc; } ;

/* Variables and functions */
 scalar_t__ APCI1564_DIGITAL_IP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_TmpValue = 0;
	unsigned int ui_Channel;

	ui_Channel = FUNC0(insn->chanspec);
	if (ui_Channel >= 0 && ui_Channel <= 31) {
		ui_TmpValue =
			(unsigned int) FUNC2(devpriv->i_IobaseAmcc + APCI1564_DIGITAL_IP);
/*
* since only 1 channel reqd to bring it to last bit it is rotated 8
* +(chan - 1) times then ANDed with 1 for last bit.
*/
		*data = (ui_TmpValue >> ui_Channel) & 0x1;
	}			/*  if  (ui_Channel >= 0 && ui_Channel <=31) */
	else {
		FUNC1(dev, "Not a valid channel number !!! \n");
		return -EINVAL;	/*  "sorry channel spec wrong " */
	}			/* else if  (ui_Channel >= 0 && ui_Channel <=31) */
	return insn->n;
}