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
struct TYPE_2__ {scalar_t__ fw_stats_update; int /*<<< orphan*/  fw_stats; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; TYPE_1__ stats; int /*<<< orphan*/  plt; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_DEBUGFS_STATS_LIFETIME ; 
 scalar_t__ WLCORE_STATE_ON ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*) ; 

void FUNC8(struct wl1271 *wl)
{
	int ret;

	FUNC1(&wl->mutex);

	if (FUNC4(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC7(wl);
	if (ret < 0)
		goto out;

	if (!wl->plt &&
	    FUNC3(jiffies, wl->stats.fw_stats_update +
		       FUNC0(WL1271_DEBUGFS_STATS_LIFETIME))) {
		FUNC5(wl, wl->stats.fw_stats);
		wl->stats.fw_stats_update = jiffies;
	}

	FUNC6(wl);

out:
	FUNC2(&wl->mutex);
}