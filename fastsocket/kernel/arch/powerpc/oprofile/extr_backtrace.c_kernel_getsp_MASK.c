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
 int /*<<< orphan*/  STACK_FRAME_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 unsigned long FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long sp, int is_first)
{
	unsigned long *stack_frame = (unsigned long *)sp;

	if (!FUNC3(sp, current, STACK_FRAME_OVERHEAD))
		return 0;

	if (!is_first)
		FUNC2(FUNC0(stack_frame));

	/*
	 * We do not enforce increasing stack addresses here because
	 * we might be transitioning from an interrupt stack to a kernel
	 * stack. validate_sp() is designed to understand this, so just
	 * use it.
	 */
	return FUNC1(stack_frame);
}