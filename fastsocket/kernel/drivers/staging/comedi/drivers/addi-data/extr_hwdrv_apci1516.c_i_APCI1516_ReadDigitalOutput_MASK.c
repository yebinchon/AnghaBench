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
struct TYPE_2__ {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI1516_DIGITAL_OP_RW ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{

	unsigned int ui_Temp;
	unsigned int ui_NoOfChannel = FUNC0(insn->chanspec);	/*  get the channel */
	ui_Temp = data[0];
	*data = FUNC2(devpriv->iobase + APCI1516_DIGITAL_OP_RW);
	if (ui_Temp == 0) {
		*data = (*data >> ui_NoOfChannel) & 0x1;
	}			/* if(ui_Temp==0) */
	else {
		if (ui_Temp == 1) {
			switch (ui_NoOfChannel) {

			case 2:
				*data = (*data >> (2 * data[1])) & 3;
				break;

			case 4:
				*data = (*data >> (4 * data[1])) & 15;
				break;

			case 7:
				break;

			default:
				FUNC1(dev, " chan spec wrong");
				return -EINVAL;	/*  "sorry channel spec wrong " */

			}	/* switch(ui_NoOfChannels) */
		}		/* if(ui_Temp==1) */
		else {
			FUNC3("\nSpecified channel not supported \n");
		}		/* elseif(ui_Temp==1) */
	}			/* elseif(ui_Temp==0) */
	return insn->n;
}