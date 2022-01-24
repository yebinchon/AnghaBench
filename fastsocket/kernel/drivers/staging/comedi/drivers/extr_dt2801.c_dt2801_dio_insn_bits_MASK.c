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
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_C_READ_DIG ; 
 int /*<<< orphan*/  DT_C_WRITE_DIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn, unsigned int *data)
{
	int which = 0;

	if (s == dev->subdevices + 4)
		which = 1;

	if (insn->n != 2)
		return -EINVAL;
	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);
		FUNC1(dev, DT_C_WRITE_DIG);
		FUNC2(dev, which);
		FUNC2(dev, s->state);
	}
	FUNC1(dev, DT_C_READ_DIG);
	FUNC2(dev, which);
	FUNC0(dev, data + 1);

	return 2;
}