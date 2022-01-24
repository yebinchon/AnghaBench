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
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WL1271_FLAG_INTENDED_FW_RECOVERY ; 
 int /*<<< orphan*/  WL1271_FLAG_RECOVERY_IN_PROGRESS ; 
 scalar_t__ WLCORE_STATE_ON ; 
 scalar_t__ WLCORE_STATE_RESTARTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*) ; 

void FUNC5(struct wl1271 *wl)
{
	FUNC0(!FUNC3(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags));

	/* Avoid a recursive recovery */
	if (wl->state == WLCORE_STATE_ON) {
		wl->state = WLCORE_STATE_RESTARTING;
		FUNC2(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags);
		FUNC4(wl);
		FUNC1(wl->hw, &wl->recovery_work);
	}
}