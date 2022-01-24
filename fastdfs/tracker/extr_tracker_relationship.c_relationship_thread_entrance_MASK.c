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
struct TYPE_2__ {int leader_index; int /*<<< orphan*/ * servers; } ;

/* Variables and functions */
 scalar_t__ MAX_SLEEP_SECONDS ; 
 double RAND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ g_continue_flag ; 
 int /*<<< orphan*/ * g_last_tracker_servers ; 
 TYPE_1__ g_tracker_servers ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void *FUNC7(void* arg)
{
#define MAX_SLEEP_SECONDS  10

	int fail_count;
	int sleep_seconds;

	fail_count = 0;
	while (g_continue_flag)
	{
		sleep_seconds = 1;
		if (g_tracker_servers.servers != NULL)
		{
			if (g_tracker_servers.leader_index < 0)
			{
				if (FUNC3() != 0)
				{
					sleep_seconds = 1 + (int)((double)FUNC1()
					* (double)MAX_SLEEP_SECONDS / RAND_MAX);
				}
			}
			else
			{
				if (FUNC2() == 0)
				{
					fail_count = 0;
				}
				else
				{
					fail_count++;
					if (fail_count >= 3)
					{
						g_tracker_servers.leader_index = -1;
						fail_count = 0;
					}
				}
			}
		}

		if (g_last_tracker_servers != NULL)
		{
			FUNC5();

			FUNC0(g_last_tracker_servers);
			g_last_tracker_servers = NULL;

			FUNC6();
		}

		FUNC4(sleep_seconds);
	}

	return NULL;
}