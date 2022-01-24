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
struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct stack_frame {unsigned long back_chain; unsigned long* gprs; } ;

/* Variables and functions */
 unsigned long PSW_ADDR_INSN ; 
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 struct stack_frame* FUNC2 (struct task_struct*) ; 

unsigned long FUNC3(struct task_struct *p)
{
	struct stack_frame *sf, *low, *high;
	unsigned long return_address;
	int count;

	if (!p || p == current || p->state == TASK_RUNNING || !FUNC2(p))
		return 0;
	low = FUNC2(p);
	high = (struct stack_frame *) FUNC1(p);
	sf = (struct stack_frame *) (p->thread.ksp & PSW_ADDR_INSN);
	if (sf <= low || sf > high)
		return 0;
	for (count = 0; count < 16; count++) {
		sf = (struct stack_frame *) (sf->back_chain & PSW_ADDR_INSN);
		if (sf <= low || sf > high)
			return 0;
		return_address = sf->gprs[8] & PSW_ADDR_INSN;
		if (!FUNC0(return_address))
			return return_address;
	}
	return 0;
}