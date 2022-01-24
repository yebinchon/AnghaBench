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
typedef  union fp_state {int dummy; } fp_state ;
struct thread_info {int /*<<< orphan*/  fpstate; int /*<<< orphan*/ * used_cp; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug; } ;
struct task_struct {TYPE_1__ thread; } ;
struct debug_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_NOTIFY_FLUSH ; 
 struct task_struct* current ; 
 struct thread_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct thread_info*) ; 

void FUNC3(void)
{
	struct thread_info *thread = FUNC0();
	struct task_struct *tsk = current;

	FUNC1(thread->used_cp, 0, sizeof(thread->used_cp));
	FUNC1(&tsk->thread.debug, 0, sizeof(struct debug_info));
	FUNC1(&thread->fpstate, 0, sizeof(union fp_state));

	FUNC2(THREAD_NOTIFY_FLUSH, thread);
}