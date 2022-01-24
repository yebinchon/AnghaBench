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
struct TYPE_2__ {int flags; int /*<<< orphan*/ * dbr; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int IA64_THREAD_DBG_VALID ; 
 int IA64_THREAD_PM_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PFM_CPUINFO_SYST_WIDE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  pfm_syst_info ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

void
FUNC7 (struct task_struct *task)
{
#ifdef CONFIG_PERFMON
	unsigned long info;
#endif

	if ((task->thread.flags & IA64_THREAD_DBG_VALID) != 0)
		FUNC3(&task->thread.dbr[0]);

#ifdef CONFIG_PERFMON
	if ((task->thread.flags & IA64_THREAD_PM_VALID) != 0)
		pfm_save_regs(task);

	info = __get_cpu_var(pfm_syst_info);
	if (info & PFM_CPUINFO_SYST_WIDE)
		pfm_syst_wide_update_task(task, info, 0);
#endif

#ifdef CONFIG_IA32_SUPPORT
	if (IS_IA32_PROCESS(task_pt_regs(task)))
		ia32_save_state(task);
#endif
}