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
struct TYPE_2__ {int ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_frame {int back_chain; unsigned long* gprs; } ;

/* Variables and functions */
 int PSW_ADDR_INSN ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 struct stack_frame* FUNC1 (struct task_struct*) ; 

unsigned long FUNC2(struct task_struct *tsk)
{
	struct stack_frame *sf, *low, *high;

	if (!tsk || !FUNC1(tsk))
		return 0;
	low = FUNC1(tsk);
	high = (struct stack_frame *) FUNC0(tsk);
	sf = (struct stack_frame *) (tsk->thread.ksp & PSW_ADDR_INSN);
	if (sf <= low || sf > high)
		return 0;
	sf = (struct stack_frame *) (sf->back_chain & PSW_ADDR_INSN);
	if (sf <= low || sf > high)
		return 0;
	return sf->gprs[8];
}