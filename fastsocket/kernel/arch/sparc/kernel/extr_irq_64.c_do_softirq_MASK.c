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

/* Variables and functions */
 int STACK_BIAS ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 () ; 
 size_t FUNC5 () ; 
 void** softirq_stack ; 

void FUNC6(void)
{
	unsigned long flags;

	if (FUNC1())
		return;

	FUNC3(flags);

	if (FUNC4()) {
		void *orig_sp, *sp = softirq_stack[FUNC5()];

		sp += THREAD_SIZE - 192 - STACK_BIAS;

		__asm__ __volatile__("mov %%sp, %0\n\t"
				     "mov %1, %%sp"
				     : "=&r" (orig_sp)
				     : "r" (sp));
		FUNC0();
		__asm__ __volatile__("mov %0, %%sp"
				     : : "r" (orig_sp));
	}

	FUNC2(flags);
}