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
struct TYPE_2__ {scalar_t__* ao_offset_msb; scalar_t__* ao_offset_lsb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ DAS08AO_AO_UPDATE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			    struct comedi_subdevice *s,
			    struct comedi_insn *insn, unsigned int *data)
{
	int n;
	int lsb, msb;
	int chan;

	lsb = data[0] & 0xff;
	msb = (data[0] >> 8) & 0xf;

	chan = FUNC0(insn->chanspec);

	for (n = 0; n < insn->n; n++) {
#if 0
		outb(lsb, dev->iobase + devpriv->ao_offset_lsb[chan]);
		outb(msb, dev->iobase + devpriv->ao_offset_msb[chan]);
#else
		FUNC4(lsb, dev->iobase + FUNC1(chan));
		FUNC4(msb, dev->iobase + FUNC2(chan));
#endif

		/* load DACs */
		FUNC3(dev->iobase + DAS08AO_AO_UPDATE);
	}

	return n;
}