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
struct TYPE_2__ {unsigned int* ao_readback; int /*<<< orphan*/  simultaneous_xfer_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev, struct comedi_subdevice *s,
		    struct comedi_insn *insn, unsigned int *data)
{
	int i;
	int chan = FUNC0(insn->chanspec);

	/* Writing a list of values to an AO channel is probably not
	 * very useful, but that's how the interface is defined. */
	for (i = 0; i < insn->n; ++i) {

/*      /\* do this as one instruction?? *\/ */
/*      outw(data[i], LSB_PORT(chan)); */

		/* Need to do this as two instructions due to 8-bit bus?? */
		/*  first, load the low byte */
		FUNC6(FUNC1(data[i]), FUNC2(chan));
		/*  next, write the high byte */
		FUNC6(FUNC3(data[i]), FUNC4(chan));

		/* save shadow register */
		devpriv->ao_readback[chan] = data[i];

		if (!devpriv->simultaneous_xfer_mode)
			FUNC5(FUNC2(chan));
	}

	/* return the number of samples written */
	return i;
}