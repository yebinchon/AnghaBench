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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__* devpriv ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	if (insn->n != 2)
		return -EINVAL;

	data[1] = FUNC1(devpriv->mite->daq_io_addr + FUNC0(0));
	data[1] |= FUNC1(devpriv->mite->daq_io_addr + FUNC0(1)) << 8;
	data[1] |= FUNC1(devpriv->mite->daq_io_addr + FUNC0(2)) << 16;

	return 2;
}