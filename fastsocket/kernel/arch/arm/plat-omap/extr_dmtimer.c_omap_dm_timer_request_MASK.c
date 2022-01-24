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
struct omap_dm_timer {int reserved; } ;

/* Variables and functions */
 int dm_timer_count ; 
 int /*<<< orphan*/  dm_timer_lock ; 
 struct omap_dm_timer* dm_timers ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct omap_dm_timer *FUNC3(void)
{
	struct omap_dm_timer *timer = NULL;
	unsigned long flags;
	int i;

	FUNC1(&dm_timer_lock, flags);
	for (i = 0; i < dm_timer_count; i++) {
		if (dm_timers[i].reserved)
			continue;

		timer = &dm_timers[i];
		timer->reserved = 1;
		break;
	}
	FUNC2(&dm_timer_lock, flags);

	if (timer != NULL)
		FUNC0(timer);

	return timer;
}