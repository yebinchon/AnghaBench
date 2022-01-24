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
struct wl1271 {int quirks; scalar_t__ state; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int WLCORE_QUIRK_REGDOMAIN_CONF ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*) ; 
 int FUNC4 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 

void FUNC7(struct wl1271 *wl)
{
	int ret;

	if (!(wl->quirks & WLCORE_QUIRK_REGDOMAIN_CONF))
		return;

	FUNC0(&wl->mutex);

	if (FUNC2(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC4(wl);
	if (ret < 0)
		goto out;

	ret = FUNC6(wl);
	if (ret < 0) {
		FUNC5(wl);
		goto out;
	}

	FUNC3(wl);
out:
	FUNC1(&wl->mutex);
}