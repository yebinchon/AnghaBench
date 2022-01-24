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
#define  APCI1710_PWM_GETINITDATA 129 
#define  APCI1710_PWM_INIT 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct comedi_device*,unsigned char,unsigned char,unsigned char*,unsigned int*,unsigned int*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC3 (struct comedi_device*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct comedi_device *dev, struct comedi_subdevice *s,
	struct comedi_insn *insn, unsigned int *data)
{
	unsigned char b_ConfigType;
	int i_ReturnValue = 0;
	b_ConfigType = FUNC1(insn->chanspec);

	switch (b_ConfigType) {
	case APCI1710_PWM_INIT:
		i_ReturnValue = FUNC3(dev, (unsigned char) FUNC0(insn->chanspec),	/*   b_ModulNbr */
			(unsigned char) data[0],	/* b_PWM */
			(unsigned char) data[1],	/*  b_ClockSelection */
			(unsigned char) data[2],	/*  b_TimingUnit */
			(unsigned int) data[3],	/* ul_LowTiming */
			(unsigned int) data[4],	/* ul_HighTiming */
			(unsigned int *) &data[0],	/* pul_RealLowTiming */
			(unsigned int *) &data[1]	/* pul_RealHighTiming */
			);
		break;

	case APCI1710_PWM_GETINITDATA:
		i_ReturnValue = FUNC2(dev, (unsigned char) FUNC0(insn->chanspec),	/*  b_ModulNbr */
			(unsigned char) data[0],	/* b_PWM */
			(unsigned char *) &data[0],	/* pb_TimingUnit */
			(unsigned int *) &data[1],	/* pul_LowTiming */
			(unsigned int *) &data[2],	/* pul_HighTiming */
			(unsigned char *) &data[3],	/*  pb_StartLevel */
			(unsigned char *) &data[4],	/*  pb_StopMode */
			(unsigned char *) &data[5],	/*  pb_StopLevel */
			(unsigned char *) &data[6],	/*  pb_ExternGate */
			(unsigned char *) &data[7],	/*  pb_InterruptEnable */
			(unsigned char *) &data[8]	/*  pb_Enable */
			);
		break;

	default:
		FUNC4(" Config Parameter Wrong\n");
	}

	if (i_ReturnValue >= 0)
		i_ReturnValue = insn->n;
	return i_ReturnValue;
}