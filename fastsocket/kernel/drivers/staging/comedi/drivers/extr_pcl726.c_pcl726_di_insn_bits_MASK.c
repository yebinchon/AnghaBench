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
struct TYPE_2__ {scalar_t__ di_hi; scalar_t__ di_lo; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	if (insn->n != 2)
		return -EINVAL;

	data[1] = FUNC0(dev->iobase + this_board->di_lo) |
	    (FUNC0(dev->iobase + this_board->di_hi) << 8);

	return 2;
}