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
struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    struct comedi_insn *insn,
				    unsigned int *data)
{
	int mask, bits;

	mask = 1 << FUNC0(insn->chanspec);
	if (mask & 0x000000ff) {
		bits = 0x000000ff;
	} else if (mask & 0x0000ff00) {
		bits = 0x0000ff00;
	} else if (mask & 0x00ff0000) {
		bits = 0x00ff0000;
	} else {
		bits = 0xff000000;
	}
	if (data[0]) {
		s->io_bits |= bits;
	} else {
		s->io_bits &= ~bits;
	}
	FUNC1(dev, s);

	return 1;
}