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
struct TYPE_2__ {int da_ranges; unsigned int* ao_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PCI171x_DA1 ; 
 int PCI171x_DA2 ; 
 scalar_t__ PCI171x_DAREF ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	int n, chan, range, ofs;

	chan = FUNC0(insn->chanspec);
	range = FUNC1(insn->chanspec);
	if (chan) {
		devpriv->da_ranges &= 0xfb;
		devpriv->da_ranges |= (range << 2);
		FUNC2(devpriv->da_ranges, dev->iobase + PCI171x_DAREF);
		ofs = PCI171x_DA2;
	} else {
		devpriv->da_ranges &= 0xfe;
		devpriv->da_ranges |= range;
		FUNC2(devpriv->da_ranges, dev->iobase + PCI171x_DAREF);
		ofs = PCI171x_DA1;
	}

	for (n = 0; n < insn->n; n++)
		FUNC2(data[n], dev->iobase + ofs);

	devpriv->ao_data[chan] = data[n];

	return n;

}