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
typedef  unsigned long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SGI_MMTIMER_VECTOR ; 
 int /*<<< orphan*/  SH_INT_CMPC ; 
 int /*<<< orphan*/  SH_RTC2_INT_CONFIG ; 
 unsigned long SH_RTC2_INT_CONFIG_IDX_SHFT ; 
 unsigned long SH_RTC2_INT_CONFIG_PID_SHFT ; 
 int /*<<< orphan*/  SH_RTC2_INT_ENABLE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int cpu, u64 expires)
{
	u64 val;

	FUNC0((u64 *)FUNC1(SH_RTC2_INT_ENABLE), 0UL);

	FUNC0((u64 *)FUNC1(SH_INT_CMPC), -1L);

	FUNC3(1);

	val = ((u64)SGI_MMTIMER_VECTOR << SH_RTC2_INT_CONFIG_IDX_SHFT) |
		((u64)FUNC2(cpu) <<
			SH_RTC2_INT_CONFIG_PID_SHFT);

	FUNC0((u64 *)FUNC1(SH_RTC2_INT_CONFIG), val);

	FUNC0((u64 *)FUNC1(SH_RTC2_INT_ENABLE), 1UL);

	FUNC0((u64 *)FUNC1(SH_INT_CMPC), expires);
}