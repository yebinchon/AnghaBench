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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SUBS_DIN ; 
 int /*<<< orphan*/  SUBS_DOUT ; 
 unsigned int FUNC0 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn, unsigned int *data)
{
	if (insn->n != 2)
		return -EINVAL;

	if (data[0]) {
		s->state &= ~data[0];
		s->state |= data[1] & data[0];
		FUNC1(dev, SUBS_DOUT, 0, s->state);
	}
	data[1] = FUNC0(dev, SUBS_DIN, 0, 0);

	return 2;
}