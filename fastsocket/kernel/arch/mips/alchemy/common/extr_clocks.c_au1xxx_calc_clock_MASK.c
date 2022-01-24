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
 int AU1000_SRC_CLK ; 
 unsigned long CONFIG_SOC_AU1000_FREQUENCY ; 
 int /*<<< orphan*/  SYS_CPUPLL ; 
 int /*<<< orphan*/  SYS_POWERCTRL ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long mips_hpt_frequency ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  time_lock ; 

unsigned long FUNC6(void)
{
	unsigned long cpu_speed;
	unsigned long flags;

	FUNC4(&time_lock, flags);

	/*
	 * On early Au1000, sys_cpupll was write-only. Since these
	 * silicon versions of Au1000 are not sold by AMD, we don't bend
	 * over backwards trying to determine the frequency.
	 */
	if (FUNC0())
#ifdef CONFIG_SOC_AU1000_FREQUENCY
		cpu_speed = CONFIG_SOC_AU1000_FREQUENCY;
#else
		cpu_speed = 396000000;
#endif
	else
		cpu_speed = (FUNC1(SYS_CPUPLL) & 0x0000003f) * AU1000_SRC_CLK;

	/* On Alchemy CPU:counter ratio is 1:1 */
	mips_hpt_frequency = cpu_speed;
	/* Equation: Baudrate = CPU / (SD * 2 * CLKDIV * 16) */
	FUNC3(cpu_speed / (2 * ((int)(FUNC1(SYS_POWERCTRL)
							  & 0x03) + 2) * 16));

	FUNC5(&time_lock, flags);

	FUNC2(cpu_speed);

	return cpu_speed;
}