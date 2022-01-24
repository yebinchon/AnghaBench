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
 scalar_t__ PCI1720_DA0 ; 
 scalar_t__ PCI1720_RANGE ; 
 scalar_t__ PCI1720_SYNCOUT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	int n, rangereg, chan;

	chan = FUNC0(insn->chanspec);
	rangereg = devpriv->da_ranges & (~(0x03 << (chan << 1)));
	rangereg |= (FUNC1(insn->chanspec) << (chan << 1));
	if (rangereg != devpriv->da_ranges) {
		FUNC2(rangereg, dev->iobase + PCI1720_RANGE);
		devpriv->da_ranges = rangereg;
	}

	for (n = 0; n < insn->n; n++) {
		FUNC3(data[n], dev->iobase + PCI1720_DA0 + (chan << 1));
		FUNC2(0, dev->iobase + PCI1720_SYNCOUT);	/*  update outputs */
	}

	devpriv->ao_data[chan] = data[n];

	return n;
}