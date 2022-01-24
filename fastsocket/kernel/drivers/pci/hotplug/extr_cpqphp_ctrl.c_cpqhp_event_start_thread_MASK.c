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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpqhp_event_thread ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  event_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

int FUNC4(void)
{
	cpqhp_event_thread = FUNC3(event_thread, NULL, "phpd_event");
	if (FUNC0(cpqhp_event_thread)) {
		FUNC2 ("Can't start up our event thread\n");
		return FUNC1(cpqhp_event_thread);
	}

	return 0;
}