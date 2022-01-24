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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PA6T_MMCR0_FCM0 ; 
 int /*<<< orphan*/  SPRN_PA6T_MMCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ oprofile_running ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	u64 mmcr0;

	/* freeze counters */
	mmcr0 = FUNC0(SPRN_PA6T_MMCR0);
	mmcr0 |= PA6T_MMCR0_FCM0;
	FUNC1(SPRN_PA6T_MMCR0, mmcr0);

	oprofile_running = 0;

	FUNC2("stop on cpu %d, mmcr0 %llx\n", FUNC3(), mmcr0);
}