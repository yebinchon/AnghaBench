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
 int /*<<< orphan*/  arm11_setup_pmu ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;

	/* Configure CPU counters by cross-calling to the other CPUs */
	ret = FUNC0(arm11_setup_pmu);
	if (ret == 0)
		FUNC1();

	return 0;
}