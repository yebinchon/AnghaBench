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
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int FUNC0 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 

__attribute__((used)) static int FUNC7(struct wl1271 *wl)
{
	int ret;

	FUNC4(DEBUG_MAC80211, "roc complete");

	FUNC1(&wl->mutex);

	if (FUNC3(wl->state != WLCORE_STATE_ON)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC6(wl);
	if (ret < 0)
		goto out;

	ret = FUNC0(wl);

	FUNC5(wl);
out:
	FUNC2(&wl->mutex);

	return ret;
}