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
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ in_offs; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{

	FUNC1("contec_di_insn_bits called\n");
	FUNC1(" data: %d %d\n", data[0], data[1]);

	if (insn->n != 2)
		return -EINVAL;

	data[1] = FUNC0(dev->iobase + thisboard->in_offs);

	return 2;
}