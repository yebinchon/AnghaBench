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
struct TYPE_2__ {unsigned int* ao_readback; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char DMM32AT_DACBUSY ; 
 int /*<<< orphan*/  DMM32AT_DACLSB ; 
 int /*<<< orphan*/  DMM32AT_DACMSB ; 
 int /*<<< orphan*/  DMM32AT_DACSTAT ; 
 int ETIMEDOUT ; 
 TYPE_1__* devpriv ; 
 unsigned char FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int i;
	int chan = FUNC0(insn->chanspec);
	unsigned char hi, lo, status;

	/* Writing a list of values to an AO channel is probably not
	 * very useful, but that's how the interface is defined. */
	for (i = 0; i < insn->n; i++) {

		devpriv->ao_readback[chan] = data[i];

		/* get the low byte */
		lo = data[i] & 0x00ff;
		/* high byte also contains channel number */
		hi = (data[i] >> 8) + chan * (1 << 6);
		/* printk("writing 0x%02x  0x%02x\n",hi,lo); */
		/* write the low and high values to the board */
		FUNC2(dev, DMM32AT_DACLSB, lo);
		FUNC2(dev, DMM32AT_DACMSB, hi);

		/* wait for circuit to settle */
		for (i = 0; i < 40000; i++) {
			status = FUNC1(dev, DMM32AT_DACSTAT);
			if ((status & DMM32AT_DACBUSY) == 0)
				break;
		}
		if (i == 40000) {
			FUNC3("timeout\n");
			return -ETIMEDOUT;
		}
		/* dummy read to update trigger the output */
		status = FUNC1(dev, DMM32AT_DACMSB);

	}

	/* return the number of samples read/written */
	return i;
}