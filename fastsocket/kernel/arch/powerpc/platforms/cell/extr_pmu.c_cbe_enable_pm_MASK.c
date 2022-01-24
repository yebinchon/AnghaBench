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
typedef  int u32 ;
struct cbe_pmd_shadow_regs {scalar_t__ counter_value_in_latch; } ;

/* Variables and functions */
 int CBE_PM_ENABLE_PERF_MON ; 
 struct cbe_pmd_shadow_regs* FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pm_control ; 

void FUNC3(u32 cpu)
{
	struct cbe_pmd_shadow_regs *shadow_regs;
	u32 pm_ctrl;

	shadow_regs = FUNC0(cpu);
	shadow_regs->counter_value_in_latch = 0;

	pm_ctrl = FUNC1(cpu, pm_control) | CBE_PM_ENABLE_PERF_MON;
	FUNC2(cpu, pm_control, pm_ctrl);
}