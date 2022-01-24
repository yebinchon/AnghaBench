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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  print_trace_ops ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct pt_regs*,unsigned long*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

void FUNC4(struct task_struct *tsk, unsigned long *sp,
		struct pt_regs *regs)
{
	if (regs && FUNC3(regs))
		return;

	FUNC1("\nCall trace:\n");

	FUNC2(tsk, regs, sp, &print_trace_ops, "");

	FUNC1("\n");

	if (!tsk)
		tsk = current;

	FUNC0(tsk);
}