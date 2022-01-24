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
struct omap_dm_timer {int /*<<< orphan*/  fclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dm_source_clocks ; 

int FUNC4(struct omap_dm_timer *timer, int source)
{
	int ret = -EINVAL;

	if (source < 0 || source >= 3)
		return -EINVAL;

	FUNC1(timer->fclk);
	ret = FUNC3(timer->fclk, dm_source_clocks[source]);
	FUNC2(timer->fclk);

	/*
	 * When the functional clock disappears, too quick writes seem
	 * to cause an abort. XXX Is this still necessary?
	 */
	FUNC0(150000);

	return ret;
}