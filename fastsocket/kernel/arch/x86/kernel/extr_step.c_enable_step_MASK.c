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
struct task_struct {int dummy; } ;

/* Variables and functions */
 unsigned long DEBUGCTLMSR_BTF ; 
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(struct task_struct *child, bool block)
{
	/*
	 * Make sure block stepping (BTF) is not enabled unless it should be.
	 * Note that we don't try to worry about any is_setting_trap_flag()
	 * instructions after the first when using block stepping.
	 * So noone should try to use debugger block stepping in a program
	 * that uses user-mode single stepping itself.
	 */
	if (FUNC1(child) && block) {
		unsigned long debugctl = FUNC2();

		debugctl |= DEBUGCTLMSR_BTF;
		FUNC5(debugctl);
		FUNC3(child, TIF_BLOCKSTEP);
	} else if (FUNC4(child, TIF_BLOCKSTEP)) {
		unsigned long debugctl = FUNC2();

		debugctl &= ~DEBUGCTLMSR_BTF;
		FUNC5(debugctl);
		FUNC0(child, TIF_BLOCKSTEP);
	}
}