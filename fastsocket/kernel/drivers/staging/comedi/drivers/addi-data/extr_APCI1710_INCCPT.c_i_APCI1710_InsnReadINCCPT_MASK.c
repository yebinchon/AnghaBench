#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {size_t ui_Read; TYPE_1__* s_FIFOInterruptParameters; } ;
struct TYPE_6__ {TYPE_2__ s_InterruptParameters; int /*<<< orphan*/  tsk_Current; } ;
struct TYPE_4__ {unsigned int b_OldModuleMask; unsigned int ul_OldInterruptMask; unsigned int ul_OldCounterLatchValue; } ;

/* Variables and functions */
#define  APCI1710_INCCPT_GET16BITCBSTATUS 140 
#define  APCI1710_INCCPT_GETCBSTATUS 139 
#define  APCI1710_INCCPT_GETINDEXSTATUS 138 
#define  APCI1710_INCCPT_GETINTERRUPTUDLATCHEDSTATUS 137 
#define  APCI1710_INCCPT_GETREFERENCESTATUS 136 
#define  APCI1710_INCCPT_GETUASSTATUS 135 
#define  APCI1710_INCCPT_GETUDSTATUS 134 
#define  APCI1710_INCCPT_READ16BITCOUNTERVALUE 133 
#define  APCI1710_INCCPT_READ32BITCOUNTERVALUE 132 
#define  APCI1710_INCCPT_READFREQUENCYMEASUREMENT 131 
#define  APCI1710_INCCPT_READINTERRUPT 130 
#define  APCI1710_INCCPT_READLATCHREGISTERSTATUS 129 
#define  APCI1710_INCCPT_READLATCHREGISTERVALUE 128 
 int APCI1710_SAVE_INTERRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 TYPE_3__* devpriv ; 
 int FUNC3 (struct comedi_device*,unsigned char,unsigned char*,unsigned char*) ; 
 int FUNC4 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC5 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC6 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC7 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC8 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC9 (struct comedi_device*,unsigned char,unsigned char*) ; 
 int FUNC10 (struct comedi_device*,unsigned char,unsigned char,unsigned int*) ; 
 int FUNC11 (struct comedi_device*,unsigned char,unsigned int*) ; 
 int FUNC12 (struct comedi_device*,unsigned char,unsigned char*,unsigned char*,unsigned int*) ; 
 int FUNC13 (struct comedi_device*,unsigned char,unsigned char,unsigned char*) ; 
 int FUNC14 (struct comedi_device*,unsigned char,unsigned char,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

int FUNC16(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned int ui_ReadType;
	int i_ReturnValue = 0;

	ui_ReadType = FUNC1(insn->chanspec);

	devpriv->tsk_Current = current;	/*  Save the current process task structure */
	switch (ui_ReadType) {
	case APCI1710_INCCPT_READLATCHREGISTERSTATUS:
		i_ReturnValue = FUNC13(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) FUNC2(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_READLATCHREGISTERVALUE:
		i_ReturnValue = FUNC14(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) FUNC2(insn->chanspec), (unsigned int *) &data[0]);
		FUNC15("Latch Register Value %d\n", data[0]);
		break;

	case APCI1710_INCCPT_READ16BITCOUNTERVALUE:
		i_ReturnValue = FUNC10(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char) FUNC2(insn->chanspec), (unsigned int *) &data[0]);
		break;

	case APCI1710_INCCPT_READ32BITCOUNTERVALUE:
		i_ReturnValue = FUNC11(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned int *) &data[0]);
		break;

	case APCI1710_INCCPT_GETINDEXSTATUS:
		i_ReturnValue = FUNC5(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_GETREFERENCESTATUS:
		i_ReturnValue = FUNC7(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_GETUASSTATUS:
		i_ReturnValue = FUNC8(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_GETCBSTATUS:
		i_ReturnValue = FUNC4(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_GET16BITCBSTATUS:
		i_ReturnValue = FUNC3(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char *) &data[0], (unsigned char *) &data[1]);
		break;

	case APCI1710_INCCPT_GETUDSTATUS:
		i_ReturnValue = FUNC9(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);

		break;

	case APCI1710_INCCPT_GETINTERRUPTUDLATCHEDSTATUS:
		i_ReturnValue = FUNC6(dev,
			(unsigned char) FUNC0(insn->chanspec), (unsigned char *) &data[0]);
		break;

	case APCI1710_INCCPT_READFREQUENCYMEASUREMENT:
		i_ReturnValue = FUNC12(dev,
			(unsigned char) FUNC0(insn->chanspec),
			(unsigned char *) &data[0],
			(unsigned char *) &data[1], (unsigned int *) &data[2]);
		break;

	case APCI1710_INCCPT_READINTERRUPT:
		data[0] = devpriv->s_InterruptParameters.
			s_FIFOInterruptParameters[devpriv->
			s_InterruptParameters.ui_Read].b_OldModuleMask;
		data[1] = devpriv->s_InterruptParameters.
			s_FIFOInterruptParameters[devpriv->
			s_InterruptParameters.ui_Read].ul_OldInterruptMask;
		data[2] = devpriv->s_InterruptParameters.
			s_FIFOInterruptParameters[devpriv->
			s_InterruptParameters.ui_Read].ul_OldCounterLatchValue;

		/**************************/
		/* Increment the read FIFO */
		/***************************/

		devpriv->
			s_InterruptParameters.
			ui_Read = (devpriv->s_InterruptParameters.
			ui_Read + 1) % APCI1710_SAVE_INTERRUPT;

		break;

	default:
		FUNC15("ReadType Parameter wrong\n");
	}

	if (i_ReturnValue >= 0)
		i_ReturnValue = insn->n;
	return i_ReturnValue;

}