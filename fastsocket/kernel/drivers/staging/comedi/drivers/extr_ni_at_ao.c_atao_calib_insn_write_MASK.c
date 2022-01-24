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
struct TYPE_2__ {unsigned int cfg2; } ;

/* Variables and functions */
 scalar_t__ ATAO_CFG2 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SCLK ; 
 unsigned int SDATA ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 struct comedi_insn *insn, unsigned int *data)
{
	unsigned int bitstring, bit;
	unsigned int chan = FUNC0(insn->chanspec);

	bitstring = ((chan & 0x7) << 8) | (data[insn->n - 1] & 0xff);

	for (bit = 1 << (11 - 1); bit; bit >>= 1) {
		FUNC1(devpriv->cfg2 | ((bit & bitstring) ? SDATA : 0),
		     dev->iobase + ATAO_CFG2);
		FUNC1(devpriv->cfg2 | SCLK | ((bit & bitstring) ? SDATA : 0),
		     dev->iobase + ATAO_CFG2);
	}
	/* strobe the appropriate caldac */
	FUNC1(devpriv->cfg2 | (((chan >> 3) + 1) << 14),
	     dev->iobase + ATAO_CFG2);
	FUNC1(devpriv->cfg2, dev->iobase + ATAO_CFG2);

	return insn->n;
}