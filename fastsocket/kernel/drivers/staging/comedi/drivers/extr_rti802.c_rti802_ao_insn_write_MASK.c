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
struct TYPE_2__ {int* ao_readback; scalar_t__* dac_coding; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTI802_DATAHIGH ; 
 scalar_t__ RTI802_DATALOW ; 
 scalar_t__ RTI802_SELECT ; 
 scalar_t__ dac_2comp ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	int i, d;
	int chan = FUNC0(insn->chanspec);

	for (i = 0; i < insn->n; i++) {
		d = devpriv->ao_readback[chan] = data[i];
		if (devpriv->dac_coding[chan] == dac_2comp)
			d ^= 0x800;
		FUNC1(chan, dev->iobase + RTI802_SELECT);
		FUNC1(d & 0xff, dev->iobase + RTI802_DATALOW);
		FUNC1(d >> 8, dev->iobase + RTI802_DATAHIGH);
	}
	return i;
}