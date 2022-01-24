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
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  pmu_backlight_lock ; 
 int /*<<< orphan*/  sleeping ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bd)
{
	unsigned long flags;
	int rc = 0;

	FUNC1(&pmu_backlight_lock, flags);
	/* Don't update brightness when sleeping */
	if (!sleeping)
		rc = FUNC0(bd);
	FUNC2(&pmu_backlight_lock, flags);
	return rc;
}