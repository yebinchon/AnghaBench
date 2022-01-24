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
struct unit_perf_monitor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_up_monitor ; 
 int /*<<< orphan*/  FUNC0 (struct unit_perf_monitor*,char const*) ; 
 struct unit_perf_monitor* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(const char *name)
{
	struct unit_perf_monitor *monitor;

	FUNC2();
	monitor = FUNC1(g_up_monitor);
	if (monitor) {
		FUNC0(monitor, name);
	}
	
	FUNC3();

	return 0;
}