#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  regs; } ;
struct TYPE_6__ {TYPE_1__ regs; int /*<<< orphan*/ * prev_sched; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	FUNC1();

	FUNC3(current->thread.prev_sched);

	/*
	 * XXX: if interrupt_end() calls schedule, this call to
	 * arch_switch_to isn't needed. We could want to apply this to
	 * improve performance. -bb
	 */
	FUNC0(current);

	current->thread.prev_sched = NULL;

	/* Handle any immediate reschedules or signals */
	FUNC2();

	FUNC4(&current->thread.regs.regs);
}