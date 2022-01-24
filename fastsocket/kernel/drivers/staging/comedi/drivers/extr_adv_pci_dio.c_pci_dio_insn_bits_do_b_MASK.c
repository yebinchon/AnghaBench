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
struct diosubd_data {int regs; scalar_t__ addr; } ;
struct comedi_subdevice {unsigned int state; scalar_t__ private; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn, unsigned int *data)
{
	const struct diosubd_data *d = (const struct diosubd_data *)s->private;
	int i;

	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);
		for (i = 0; i < d->regs; i++)
			FUNC0((s->state >> (8 * i)) & 0xff,
			     dev->iobase + d->addr + i);
	}
	data[1] = s->state;

	return 2;
}