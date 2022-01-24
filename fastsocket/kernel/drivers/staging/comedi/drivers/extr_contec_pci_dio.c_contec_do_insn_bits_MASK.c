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
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {unsigned int iobase; } ;
struct TYPE_2__ {unsigned int out_offs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{

	FUNC1("contec_do_insn_bits called\n");
	FUNC1(" data: %d %d\n", data[0], data[1]);

	if (insn->n != 2)
		return -EINVAL;

	if (data[0]) {
		s->state &= ~data[0];
		s->state |= data[0] & data[1];
		FUNC1("  out: %d on %lx\n", s->state,
		       dev->iobase + thisboard->out_offs);
		FUNC0(s->state, dev->iobase + thisboard->out_offs);
	}
	return 2;
}