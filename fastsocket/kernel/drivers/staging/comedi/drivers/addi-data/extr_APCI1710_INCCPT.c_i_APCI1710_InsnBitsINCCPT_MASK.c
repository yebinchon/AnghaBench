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
#define  APCI1710_INCCPT_CLEARALLCOUNTERVALUE 134 
#define  APCI1710_INCCPT_CLEARCOUNTERVALUE 133 
#define  APCI1710_INCCPT_LATCHCOUNTER 132 
#define  APCI1710_INCCPT_SETDIGITALCHLOFF 131 
#define  APCI1710_INCCPT_SETDIGITALCHLON 130 
#define  APCI1710_INCCPT_SETINDEXANDREFERENCESOURCE 129 
#define  APCI1710_INCCPT_SETINPUTFILTER 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_1__* devpriv ; 
 int FUNC2 (struct comedi_device*) ; 
 int FUNC3 (struct comedi_device*,unsigned char) ; 
 int FUNC4 (struct comedi_device*,unsigned char,unsigned char) ; 
 int FUNC5 (struct comedi_device*,unsigned char) ; 
 int FUNC6 (struct comedi_device*,unsigned char) ; 
 int FUNC7 (struct comedi_device*,unsigned char,unsigned char) ; 
 int FUNC8 (struct comedi_device*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_BitsType;
	int i_ReturnValue = 0;
	ui_BitsType = FUNC1(insn->chanspec);
	devpriv->tsk_Current = current;	/*  Save the current process task structure */

	switch (ui_BitsType) {
	case APCI1710_INCCPT_CLEARCOUNTERVALUE:
		i_ReturnValue = FUNC3(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_CLEARALLCOUNTERVALUE:
		i_ReturnValue = FUNC2(dev);
		break;

	case APCI1710_INCCPT_SETINPUTFILTER:
		i_ReturnValue = FUNC8(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) data[0], (unsigned char) data[1]);
		break;

	case APCI1710_INCCPT_LATCHCOUNTER:
		i_ReturnValue = FUNC4(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char) data[0]);
		break;

	case APCI1710_INCCPT_SETINDEXANDREFERENCESOURCE:
		i_ReturnValue = FUNC7(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char) data[0]);
		break;

	case APCI1710_INCCPT_SETDIGITALCHLON:
		i_ReturnValue = FUNC6(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	case APCI1710_INCCPT_SETDIGITALCHLOFF:
		i_ReturnValue = FUNC5(dev,
			(unsigned char) FUNC0(insn->chanspec));
		break;

	default:
		FUNC9("Bits Config Parameter Wrong\n");
	}

	if (i_ReturnValue >= 0)
		i_ReturnValue = insn->n;
	return i_ReturnValue;
}