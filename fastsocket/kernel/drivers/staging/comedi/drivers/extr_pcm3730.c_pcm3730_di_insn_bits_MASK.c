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
struct comedi_subdevice {scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	if (insn->n != 2)
		return -EINVAL;
	data[1] = FUNC0(dev->iobase + (unsigned long)(s->private));
	return 2;
}