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
struct TYPE_2__ {scalar_t__ adb_type; } ;

/* Variables and functions */
 scalar_t__ MAC_ADB_CUDA ; 
 scalar_t__ MAC_ADB_II ; 
 scalar_t__ MAC_ADB_PB1 ; 
 scalar_t__ MAC_ADB_PB2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* macintosh_config ; 
 scalar_t__ oss_present ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	/*
	 * MAC_ADB_IISI may need to be moved up here if it doesn't actually
	 * work using the ADB packet method.  --David Kilzer
	 */

	if (oss_present) {
		FUNC2();
	} else if (macintosh_config->adb_type == MAC_ADB_II) {
		FUNC5();
#ifdef CONFIG_ADB_CUDA
	} else if (macintosh_config->adb_type == MAC_ADB_CUDA) {
		cuda_shutdown();
#endif
#ifdef CONFIG_ADB_PMU68K
	} else if (macintosh_config->adb_type == MAC_ADB_PB1
		|| macintosh_config->adb_type == MAC_ADB_PB2) {
		pmu_shutdown();
#endif
	}
	FUNC1();
	FUNC4("It is now safe to turn off your Macintosh.\n");
	while(1);
}