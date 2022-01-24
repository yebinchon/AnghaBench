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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernel_backlight_disabled ; 
 int pmac_backlight_set_legacy_queued ; 
 int /*<<< orphan*/  pmac_backlight_set_legacy_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(int brightness) {
	if (FUNC0(&kernel_backlight_disabled))
		return;

	pmac_backlight_set_legacy_queued = brightness;
	FUNC1(&pmac_backlight_set_legacy_work);
}