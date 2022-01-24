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
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_Calibration_Channel_Select_67xx ; 
 int CR_ALT_SOURCE ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (struct comedi_device*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n, retval;
	unsigned short sample;
	unsigned int channel_select;
	const unsigned int INTERNAL_REF = 0x1000;

	/* Set calibration adc source.  Docs lie, reference select bits 8 to 11
	 * do nothing. bit 12 seems to chooses internal reference voltage, bit
	 * 13 causes the adc input to go overrange (maybe reads external reference?) */
	if (insn->chanspec & CR_ALT_SOURCE)
		channel_select = INTERNAL_REF;
	else
		channel_select = FUNC0(insn->chanspec);
	FUNC2(dev, channel_select, AO_Calibration_Channel_Select_67xx);

	for (n = 0; n < insn->n; n++) {
		retval = FUNC1(dev, &sample);
		if (retval < 0)
			return retval;
		data[n] = sample;
	}
	return insn->n;
}