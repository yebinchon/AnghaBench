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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int /*<<< orphan*/  ao_bipolar; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI230_DACCON ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/ * pci230_ao_bipolar ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	int i;
	int chan, range;

	/* Unpack channel and range. */
	chan = FUNC0(insn->chanspec);
	range = FUNC1(insn->chanspec);

	/* Set range - see analogue output range table; 0 => unipolar 10V,
	 * 1 => bipolar +/-10V range scale */
	devpriv->ao_bipolar = pci230_ao_bipolar[range];
	FUNC2(range, dev->iobase + PCI230_DACCON);

	/* Writing a list of values to an AO channel is probably not
	 * very useful, but that's how the interface is defined. */
	for (i = 0; i < insn->n; i++) {
		/* Write value to DAC and store it. */
		FUNC3(dev, data[i], chan);
	}

	/* return the number of samples read/written */
	return i;
}