#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
#define  APCI1710_PWM_DISABLE 130 
#define  APCI1710_PWM_ENABLE 129 
#define  APCI1710_PWM_NEWTIMING 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*,unsigned char,unsigned char) ; 
 int FUNC3 (struct comedi_device*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int FUNC4 (struct comedi_device*,unsigned char,unsigned char,unsigned char,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned char b_WriteType;
	int i_ReturnValue = 0;
	b_WriteType = FUNC1(insn->chanspec);

	switch (b_WriteType) {
	case APCI1710_PWM_ENABLE:
		i_ReturnValue = FUNC3(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) data[0],
			(unsigned char) data[1],
			(unsigned char) data[2],
			(unsigned char) data[3], (unsigned char) data[4], (unsigned char) data[5]);
		break;

	case APCI1710_PWM_DISABLE:
		i_ReturnValue = FUNC2(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char) data[0]);
		break;

	case APCI1710_PWM_NEWTIMING:
		i_ReturnValue = FUNC4(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) data[0],
			(unsigned char) data[1], (unsigned int) data[2], (unsigned int) data[3]);
		break;

	default:
		FUNC5("Write Config Parameter Wrong\n");
	}

	if (i_ReturnValue >= 0)
		i_ReturnValue = insn->n;
	return i_ReturnValue;
}