#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {unsigned long iobase; } ;

/* Variables and functions */
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
			 struct comedi_subdevice *s, struct comedi_insn *insn,
			 unsigned int *data)
{
	int n;
	unsigned int lo_byte, hi_byte;
	char chan = FUNC0(insn->chanspec);
	unsigned long iobase = dev->iobase;

	for (n = 0; n < insn->n; n++) {	/* sample n times on selected channel */
		/* XXX probably can move next step out of for() loop -- will make
		 * AI a little bit faster. */
		FUNC2(chan, iobase + 2);	/* select chan */
		FUNC2(0, iobase + 3);	/* start conversion */
		/* XXX should test "done" flag instead of delay */
		FUNC3(30);	/* sleep 30 usec */
		lo_byte = FUNC1(iobase + 2);	/* low 8 byte */
		hi_byte = FUNC1(iobase + 3) & 0xf;	/* high 4 bit and mask */
		data[n] = lo_byte + (hi_byte << 8);
	}
	return n;
}