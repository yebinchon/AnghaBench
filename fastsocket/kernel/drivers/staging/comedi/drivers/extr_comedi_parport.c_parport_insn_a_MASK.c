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
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int a_data; } ;

/* Variables and functions */
 scalar_t__ PARPORT_A ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	if (data[0]) {
		devpriv->a_data &= ~data[0];
		devpriv->a_data |= (data[0] & data[1]);

		FUNC1(devpriv->a_data, dev->iobase + PARPORT_A);
	}

	data[1] = FUNC0(dev->iobase + PARPORT_A);

	return 2;
}