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
 int /*<<< orphan*/  SH_INT_CMPB ; 
 int /*<<< orphan*/  SH_RTC1_INT_CONFIG ; 
 unsigned long SH_RTC1_INT_CONFIG_IDX_SHFT ; 
 unsigned long SH_RTC1_INT_CONFIG_PID_SHFT ; 
 int /*<<< orphan*/  SH_RTC1_INT_ENABLE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int cpu, u64 expires)
{
	u64 val;

	/* Disable interrupt */
	FUNC0((u64 *)FUNC1(SH_RTC1_INT_ENABLE), 0UL);

	/* Initialize comparator value */
	FUNC0((u64 *)FUNC1(SH_INT_CMPB), -1L);

	/* Clear pending bit */
	FUNC3(0);

	val = ((u64)SGI_MMTIMER_VECTOR << SH_RTC1_INT_CONFIG_IDX_SHFT) |
		((u64)FUNC2(cpu) <<
			SH_RTC1_INT_CONFIG_PID_SHFT);

	/* Set configuration */
	FUNC0((u64 *)FUNC1(SH_RTC1_INT_CONFIG), val);

	/* Enable RTC interrupts */
	FUNC0((u64 *)FUNC1(SH_RTC1_INT_ENABLE), 1UL);

	/* Initialize comparator value */
	FUNC0((u64 *)FUNC1(SH_INT_CMPB), expires);


}