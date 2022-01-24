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
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int control_2; int dac_control; unsigned int* ao_readback; scalar_t__ me_regbase; } ;

/* Variables and functions */
 unsigned int BUFFERED_DAC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DAC_BIPOLAR_A ; 
 int DAC_GAIN_0_A ; 
 int DAC_GAIN_1_A ; 
 unsigned int ENABLE_DAC ; 
 scalar_t__ ME_CONTROL_2 ; 
 scalar_t__ ME_DAC_CONTROL ; 
 scalar_t__ ME_DAC_CONTROL_UPDATE ; 
 scalar_t__ ME_DAC_DATA_A ; 
 scalar_t__ ME_DAC_UPDATE ; 
 TYPE_1__* dev_private ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int chan;
	int rang;
	int i;

	/* Enable all DAC */
	dev_private->control_2 |= ENABLE_DAC;
	FUNC3(dev_private->control_2, dev_private->me_regbase + ME_CONTROL_2);

	/* and set DAC to "buffered" mode */
	dev_private->control_2 |= BUFFERED_DAC;
	FUNC3(dev_private->control_2, dev_private->me_regbase + ME_CONTROL_2);

	/* Set dac-control register */
	for (i = 0; i < insn->n; i++) {
		chan = FUNC0((&insn->chanspec)[i]);
		rang = FUNC1((&insn->chanspec)[i]);

		/* clear bits for this channel */
		dev_private->dac_control &= ~(0x0880 >> chan);
		if (rang == 0)
			dev_private->dac_control |=
			    ((DAC_BIPOLAR_A | DAC_GAIN_1_A) >> chan);
		else if (rang == 1)
			dev_private->dac_control |=
			    ((DAC_BIPOLAR_A | DAC_GAIN_0_A) >> chan);
	}
	FUNC3(dev_private->dac_control,
	       dev_private->me_regbase + ME_DAC_CONTROL);

	/* Update dac-control register */
	FUNC2(dev_private->me_regbase + ME_DAC_CONTROL_UPDATE);

	/* Set data register */
	for (i = 0; i < insn->n; i++) {
		chan = FUNC0((&insn->chanspec)[i]);
		FUNC3((data[0] & s->maxdata),
		       dev_private->me_regbase + ME_DAC_DATA_A + (chan << 1));
		dev_private->ao_readback[chan] = (data[0] & s->maxdata);
	}

	/* Update dac with data registers */
	FUNC2(dev_private->me_regbase + ME_DAC_UPDATE);

	return i;
}