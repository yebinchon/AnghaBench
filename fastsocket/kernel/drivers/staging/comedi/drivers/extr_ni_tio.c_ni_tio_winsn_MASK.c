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
struct ni_gpct_device {unsigned int* regs; } ;
struct ni_gpct {int /*<<< orphan*/  counter_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  Gi_Load_Bit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct ni_gpct*) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ni_gpct*,unsigned int,size_t) ; 

int FUNC7(struct ni_gpct *counter, struct comedi_insn *insn,
		 unsigned int *data)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	const unsigned channel = FUNC0(insn->chanspec);
	unsigned load_reg;

	if (insn->n < 1)
		return 0;
	switch (channel) {
	case 0:
		/* Unsafe if counter is armed.  Should probably check status and return -EBUSY if armed. */
		/* Don't disturb load source select, just use whichever load register is already selected. */
		load_reg = FUNC4(counter);
		FUNC6(counter, data[0], load_reg);
		FUNC5(counter,
					  FUNC1(counter->
							       counter_index),
					  0, 0, Gi_Load_Bit);
		/* restore state of load reg to whatever the user set last set it to */
		FUNC6(counter, counter_dev->regs[load_reg], load_reg);
		break;
	case 1:
		counter_dev->regs[FUNC2(counter->counter_index)] =
		    data[0];
		FUNC6(counter, data[0],
			       FUNC2(counter->counter_index));
		break;
	case 2:
		counter_dev->regs[FUNC3(counter->counter_index)] =
		    data[0];
		FUNC6(counter, data[0],
			       FUNC3(counter->counter_index));
		break;
	default:
		return -EINVAL;
		break;
	}
	return 0;
}