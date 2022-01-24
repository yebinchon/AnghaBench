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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MM_pgd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_cpu ; 
 int /*<<< orphan*/  TI_exec_domain ; 
 int /*<<< orphan*/  TI_flags ; 
 int /*<<< orphan*/  TI_preempt_count ; 
 int /*<<< orphan*/  TI_rar_saved ; 
 int /*<<< orphan*/  TI_restart_block ; 
 int /*<<< orphan*/  TI_rsr_saved ; 
 int /*<<< orphan*/  TI_task ; 
 int /*<<< orphan*/  TSK_active_mm ; 
 int /*<<< orphan*/  active_mm ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  exec_domain ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  mm_struct ; 
 int /*<<< orphan*/  pgd ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  rar_saved ; 
 int /*<<< orphan*/  restart_block ; 
 int /*<<< orphan*/  rsr_saved ; 
 int /*<<< orphan*/  task ; 
 int /*<<< orphan*/  task_struct ; 
 int /*<<< orphan*/  thread_info ; 

void FUNC2(void)
{
	FUNC1(TI_task, thread_info, task);
	FUNC1(TI_exec_domain, thread_info, exec_domain);
	FUNC1(TI_flags, thread_info, flags);
	FUNC1(TI_cpu, thread_info, cpu);
	FUNC1(TI_preempt_count, thread_info, preempt_count);
	FUNC1(TI_rar_saved, thread_info, rar_saved);
	FUNC1(TI_rsr_saved, thread_info, rsr_saved);
	FUNC1(TI_restart_block, thread_info, restart_block);
	FUNC0();
	FUNC1(TSK_active_mm, task_struct, active_mm);
	FUNC0();
	FUNC1(MM_pgd, mm_struct, pgd);
}