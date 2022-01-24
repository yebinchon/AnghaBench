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
struct TYPE_2__ {unsigned int* ao_readback; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MULTIQ3_CONTROL ; 
 int MULTIQ3_CONTROL_MUST ; 
 scalar_t__ MULTIQ3_DAC_DATA ; 
 int MULTIQ3_DA_LOAD ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	int i;
	int chan = FUNC0(insn->chanspec);

	for (i = 0; i < insn->n; i++) {
		FUNC1(MULTIQ3_CONTROL_MUST | MULTIQ3_DA_LOAD | chan,
		     dev->iobase + MULTIQ3_CONTROL);
		FUNC1(data[i], dev->iobase + MULTIQ3_DAC_DATA);
		FUNC1(MULTIQ3_CONTROL_MUST, dev->iobase + MULTIQ3_CONTROL);

		devpriv->ao_readback[chan] = data[i];
	}

	return i;
}