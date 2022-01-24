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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ CORE_CLK_SRC_DPLL ; 
 scalar_t__ CORE_CLK_SRC_DPLL_X2 ; 
 int /*<<< orphan*/  OMAP2420_PRCM_VOLTSETUP ; 
 int /*<<< orphan*/  OMAP2430_PRCM_VOLTSETUP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ curr_perf_level ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

u32 FUNC8(u32 level, u32 force)
{
	u32 dll_ctrl, m_type;
	u32 prev = curr_perf_level;
	unsigned long flags;

	if ((curr_perf_level == level) && !force)
		return prev;

	if (level == CORE_CLK_SRC_DPLL)
		dll_ctrl = FUNC6();
	else if (level == CORE_CLK_SRC_DPLL_X2)
		dll_ctrl = FUNC5();
	else
		return prev;

	m_type = FUNC7();

	FUNC3(flags);
	if (FUNC1())
		FUNC0(0xffff, OMAP2420_PRCM_VOLTSETUP);
	else
		FUNC0(0xffff, OMAP2430_PRCM_VOLTSETUP);
	FUNC4(level, dll_ctrl, m_type);
	curr_perf_level = level;
	FUNC2(flags);

	return prev;
}