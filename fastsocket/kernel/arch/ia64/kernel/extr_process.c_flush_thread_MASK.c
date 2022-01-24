#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  tls_array; int /*<<< orphan*/  task_size; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA32_PAGE_OFFSET ; 
 int IA64_THREAD_DBG_VALID ; 
 int IA64_THREAD_FPH_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_DS ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6 (void)
{
	/* drop floating-point and debug-register state if it exists: */
	current->thread.flags &= ~(IA64_THREAD_FPH_VALID | IA64_THREAD_DBG_VALID);
	FUNC2(current);
#ifdef CONFIG_IA32_SUPPORT
	if (IS_IA32_PROCESS(task_pt_regs(current))) {
		ia32_drop_ia64_partial_page_list(current);
		current->thread.task_size = IA32_PAGE_OFFSET;
		set_fs(USER_DS);
		memset(current->thread.tls_array, 0, sizeof(current->thread.tls_array));
	}
#endif
}