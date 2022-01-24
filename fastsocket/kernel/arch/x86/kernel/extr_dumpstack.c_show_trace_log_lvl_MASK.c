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
 int /*<<< orphan*/  FUNC0 (struct task_struct*,struct pt_regs*,unsigned long*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  print_trace_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void
FUNC2(struct task_struct *task, struct pt_regs *regs,
		unsigned long *stack, char *log_lvl)
{
	FUNC1("%sCall Trace:\n", log_lvl);
	FUNC0(task, regs, stack, &print_trace_ops, log_lvl);
}