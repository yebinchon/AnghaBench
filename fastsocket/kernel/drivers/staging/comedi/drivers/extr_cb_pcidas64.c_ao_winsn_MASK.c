#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {unsigned int dac_control1_bits; unsigned int* ao_value; scalar_t__ main_iobase; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DAC_CONTROL0_REG ; 
 scalar_t__ DAC_CONTROL1_REG ; 
 scalar_t__ LAYOUT_4020 ; 
 TYPE_2__* FUNC2 (struct comedi_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__* FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,unsigned int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, struct comedi_subdevice *s,
		    struct comedi_insn *insn, unsigned int *data)
{
	int chan = FUNC0(insn->chanspec);
	int range = FUNC1(insn->chanspec);

	/*  do some initializing */
	FUNC8(0, FUNC6(dev)->main_iobase + DAC_CONTROL0_REG);

	/*  set range */
	FUNC7(dev, &FUNC6(dev)->dac_control1_bits, chan, range);
	FUNC8(FUNC6(dev)->dac_control1_bits,
	       FUNC6(dev)->main_iobase + DAC_CONTROL1_REG);

	/*  write to channel */
	if (FUNC2(dev)->layout == LAYOUT_4020) {
		FUNC8(data[0] & 0xff,
		       FUNC6(dev)->main_iobase + FUNC4(chan));
		FUNC8((data[0] >> 8) & 0xf,
		       FUNC6(dev)->main_iobase + FUNC5(chan));
	} else {
		FUNC8(data[0], FUNC6(dev)->main_iobase + FUNC3(chan));
	}

	/*  remember output value */
	FUNC6(dev)->ao_value[chan] = data[0];

	return 1;
}