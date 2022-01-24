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
struct TYPE_2__ {int /*<<< orphan*/  tsk_Current; } ;

/* Variables and functions */
#define  APCI1710_INCCPT_DISABLECOMPARELOGIC 137 
#define  APCI1710_INCCPT_DISABLEFREQUENCYMEASUREMENT 136 
#define  APCI1710_INCCPT_DISABLEINDEX 135 
#define  APCI1710_INCCPT_DISABLELATCHINTERRUPT 134 
#define  APCI1710_INCCPT_ENABLECOMPARELOGIC 133 
#define  APCI1710_INCCPT_ENABLEFREQUENCYMEASUREMENT 132 
#define  APCI1710_INCCPT_ENABLEINDEX 131 
#define  APCI1710_INCCPT_ENABLELATCHINTERRUPT 130 
#define  APCI1710_INCCPT_WRITE16BITCOUNTERVALUE 129 
#define  APCI1710_INCCPT_WRITE32BITCOUNTERVALUE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* devpriv ; 
 int FUNC2 (struct comedi_device*,unsigned char) ; 
 int FUNC3 (struct comedi_device*,unsigned char) ; 
 int FUNC4 (struct comedi_device*,unsigned char) ; 
 int FUNC5 (struct comedi_device*,unsigned char) ; 
 int FUNC6 (struct comedi_device*,unsigned char) ; 
 int FUNC7 (struct comedi_device*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,unsigned char) ; 
 int FUNC9 (struct comedi_device*,unsigned char) ; 
 int FUNC10 (struct comedi_device*,unsigned char,unsigned char,unsigned int) ; 
 int FUNC11 (struct comedi_device*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int FUNC13(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_WriteType;
	int i_ReturnValue = 0;

	ui_WriteType = FUNC1(insn->chanspec);
	devpriv->tsk_Current = current;	/*  Save the current process task structure */

	switch (ui_WriteType) {
	case APCI1710_INCCPT_ENABLELATCHINTERRUPT:
		i_ReturnValue = FUNC9(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_DISABLELATCHINTERRUPT:
		i_ReturnValue = FUNC5(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_WRITE16BITCOUNTERVALUE:
		i_ReturnValue = FUNC10(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) data[0], (unsigned int) data[1]);
		break;

	case APCI1710_INCCPT_WRITE32BITCOUNTERVALUE:
		i_ReturnValue = FUNC11(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned int) data[0]);

		break;

	case APCI1710_INCCPT_ENABLEINDEX:
		FUNC8(dev, (unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_DISABLEINDEX:
		i_ReturnValue = FUNC4(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_ENABLECOMPARELOGIC:
		i_ReturnValue = FUNC6(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_DISABLECOMPARELOGIC:
		i_ReturnValue = FUNC2(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_ENABLEFREQUENCYMEASUREMENT:
		i_ReturnValue = FUNC7(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char) data[0]);
		break;

	case APCI1710_INCCPT_DISABLEFREQUENCYMEASUREMENT:
		i_ReturnValue = FUNC3(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	default:
		FUNC12("Write Config Parameter Wrong\n");
	}

	if (i_ReturnValue >= 0)
		i_ReturnValue = insn->n;
	return i_ReturnValue;
}