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
struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int* shadow_samples; } ;
struct TYPE_4__ {unsigned int iobase; TYPE_1__ ao; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,unsigned int) ; 
 TYPE_2__* subpriv ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s,
		    struct comedi_insn *insn, unsigned int *data)
{
	int n;
	unsigned iobase = subpriv->iobase, iooffset = 0;

	for (n = 0; n < insn->n; n++) {
		unsigned chan = FUNC0(insn->chanspec), range =
		    FUNC1(insn->chanspec);
		if (chan < s->n_chan) {
			unsigned char command_byte = 0, range_byte =
			    range & ((1 << 4) - 1);
			if (chan >= 4)
				chan -= 4, iooffset += 4;
			/* set the range.. */
			FUNC2(range_byte, iobase + iooffset + 0);
			FUNC2(0, iobase + iooffset + 1);

			/* tell it to begin */
			command_byte = (chan << 1) | 0x60;
			FUNC2(command_byte, iobase + iooffset + 2);

			FUNC3(iobase + iooffset);

			FUNC2(data[n] & 0xff, iobase + iooffset + 0);	/* low order byte */
			FUNC2((data[n] >> 8) & 0xff, iobase + iooffset + 1);	/* high order byte */
			command_byte = 0x70 | (chan << 1);	/* set bit 4 of command byte to indicate data is loaded and trigger conversion */
			/* trigger converion */
			FUNC2(command_byte, iobase + iooffset + 2);

			FUNC3(iobase + iooffset);

			subpriv->ao.shadow_samples[chan] = data[n];	/* save to shadow register for ao_rinsn */
		}
	}
	return n;
}