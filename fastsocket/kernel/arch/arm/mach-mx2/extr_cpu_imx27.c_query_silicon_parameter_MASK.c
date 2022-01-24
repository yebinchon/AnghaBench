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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCTRL_BASE_ADDR ; 
 scalar_t__ SYS_CHIP_ID ; 
 int FUNC1 (scalar_t__) ; 
 int cpu_partnumber ; 
 int cpu_silicon_rev ; 

__attribute__((used)) static void FUNC2(void)
{
	u32 val;
	/*
	 * now we have access to the IO registers. As we need
	 * the silicon revision very early we read it here to
	 * avoid any further hooks
	*/
	val = FUNC1(FUNC0(SYSCTRL_BASE_ADDR) + SYS_CHIP_ID);

	cpu_silicon_rev = (int)(val >> 28);
	cpu_partnumber = (int)((val >> 12) & 0xFFFF);
}