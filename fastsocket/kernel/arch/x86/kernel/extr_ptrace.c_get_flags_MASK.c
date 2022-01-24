#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_FORCED_TF ; 
 unsigned long X86_EFLAGS_TF ; 
 TYPE_1__* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct task_struct *task)
{
	unsigned long retval = FUNC0(task)->flags;

	/*
	 * If the debugger set TF, hide it from the readout.
	 */
	if (FUNC1(task, TIF_FORCED_TF))
		retval &= ~X86_EFLAGS_TF;

	return retval;
}