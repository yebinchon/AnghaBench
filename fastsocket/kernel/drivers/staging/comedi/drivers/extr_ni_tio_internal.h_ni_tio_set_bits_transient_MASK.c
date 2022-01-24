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
struct ni_gpct_device {unsigned int* regs; int /*<<< orphan*/  regs_lock; } ;
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;
typedef  enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NITIO_Num_Registers ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ni_gpct*,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC5(struct ni_gpct *counter,
					     enum ni_gpct_register
					     register_index, unsigned bit_mask,
					     unsigned bit_values,
					     unsigned transient_bit_values)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned long flags;

	FUNC0(register_index >= NITIO_Num_Registers);
	FUNC2(&counter_dev->regs_lock, flags);
	counter_dev->regs[register_index] &= ~bit_mask;
	counter_dev->regs[register_index] |= (bit_values & bit_mask);
	FUNC4(counter,
		       counter_dev->regs[register_index] | transient_bit_values,
		       register_index);
	FUNC1();
	FUNC3(&counter_dev->regs_lock, flags);
}