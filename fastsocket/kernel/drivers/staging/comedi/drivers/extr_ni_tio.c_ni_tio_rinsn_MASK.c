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
 int /*<<< orphan*/  Gi_Save_Trace_Bit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct ni_gpct*,int /*<<< orphan*/ ) ; 

int FUNC7(struct ni_gpct *counter, struct comedi_insn *insn,
		 unsigned int *data)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	const unsigned channel = FUNC0(insn->chanspec);
	unsigned first_read;
	unsigned second_read;
	unsigned correct_read;

	if (insn->n < 1)
		return 0;
	switch (channel) {
	case 0:
		FUNC5(counter,
				FUNC1(counter->counter_index),
				Gi_Save_Trace_Bit, 0);
		FUNC5(counter,
				FUNC1(counter->counter_index),
				Gi_Save_Trace_Bit, Gi_Save_Trace_Bit);
		/* The count doesn't get latched until the next clock edge, so it is possible the count
		   may change (once) while we are reading.  Since the read of the SW_Save_Reg isn't
		   atomic (apparently even when it's a 32 bit register according to 660x docs),
		   we need to read twice and make sure the reading hasn't changed.  If it has,
		   a third read will be correct since the count value will definitely have latched by then. */
		first_read =
		    FUNC6(counter,
				  FUNC4(counter->counter_index));
		second_read =
		    FUNC6(counter,
				  FUNC4(counter->counter_index));
		if (first_read != second_read)
			correct_read =
			    FUNC6(counter,
					  FUNC4(counter->
							       counter_index));
		else
			correct_read = first_read;
		data[0] = correct_read;
		return 0;
		break;
	case 1:
		data[0] =
		    counter_dev->
		    regs[FUNC2(counter->counter_index)];
		break;
	case 2:
		data[0] =
		    counter_dev->
		    regs[FUNC3(counter->counter_index)];
		break;
	};
	return 0;
}