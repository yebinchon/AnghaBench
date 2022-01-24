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
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_ARG ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _700_DATA ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_insn *insn,
			   unsigned int *data)
{
	if (data[0]) {
		s->state &= ~data[0];
		s->state |= (data[0] & data[1]);

		if (data[0] & 0xff)
			FUNC0(1, _700_DATA, s->state & 0xff,
				      CALLBACK_ARG);
	}

	data[1] = s->state & 0xff;
	data[1] |= FUNC0(0, _700_DATA, 0, CALLBACK_ARG) << 8;

	return 2;
}