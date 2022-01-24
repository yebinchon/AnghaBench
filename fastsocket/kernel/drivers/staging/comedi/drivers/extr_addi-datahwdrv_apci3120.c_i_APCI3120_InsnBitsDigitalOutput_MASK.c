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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int b_DigitalOutputRegister; scalar_t__ iobase; } ;
struct TYPE_3__ {unsigned int i_DoMaxdata; } ;

/* Variables and functions */
 scalar_t__ APCI3120_DIGITAL_OUTPUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* this_board ; 

int FUNC3(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     struct comedi_insn *insn,
				     unsigned int *data)
{
	if ((data[0] > this_board->i_DoMaxdata) || (data[0] < 0)) {

		FUNC0(dev, "Data is not valid !!! \n");
		return -EINVAL;
	}

	switch (data[1]) {
	case 1:
		data[0] = (data[0] << 4) | devpriv->b_DigitalOutputRegister;
		break;

	case 2:
		data[0] = data[0];
		break;
	default:
		FUNC2("\nThe parameter passed is in error \n");
		return -EINVAL;
	}			/*  switch(data[1]) */
	FUNC1(data[0], devpriv->iobase + APCI3120_DIGITAL_OUTPUT);

	devpriv->b_DigitalOutputRegister = data[0] & 0xF0;

	return insn->n;

}