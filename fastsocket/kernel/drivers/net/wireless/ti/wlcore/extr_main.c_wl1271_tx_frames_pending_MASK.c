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
struct wl1271 {scalar_t__ state; scalar_t__ tx_frames_cnt; int /*<<< orphan*/  mutex; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct wl1271*) ; 

__attribute__((used)) static bool FUNC4(struct ieee80211_hw *hw)
{
	struct wl1271 *wl = hw->priv;
	bool ret = false;

	FUNC0(&wl->mutex);

	if (FUNC2(wl->state != WLCORE_STATE_ON))
		goto out;

	/* packets are considered pending if in the TX queue or the FW */
	ret = (FUNC3(wl) > 0) || (wl->tx_frames_cnt > 0);
out:
	FUNC1(&wl->mutex);

	return ret;
}