#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long usp; } ;
struct task_struct {int /*<<< orphan*/  pid; TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long erp; } ;

/* Variables and functions */
 unsigned int PT_EDA ; 
 unsigned int PT_MAX ; 
 unsigned int PT_PPC ; 
 unsigned int PT_USP ; 
 unsigned long FUNC0 (struct task_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 TYPE_2__* FUNC2 (struct task_struct*) ; 

int FUNC3(struct task_struct *task, unsigned int regno, unsigned long data)
{
	if (regno <= PT_EDA)
		((unsigned long *)FUNC2(task))[regno] = data;
	else if (regno == PT_USP)
		task->thread.usp = data;
	else if (regno == PT_PPC) {
		/* Write pseudo-PC to ERP only if changed. */
		if (data != FUNC0(task))
			FUNC2(task)->erp = data;
	} else if (regno <= PT_MAX)
		return FUNC1(task->pid, regno, data);
	else
		return -1;
	return 0;
}