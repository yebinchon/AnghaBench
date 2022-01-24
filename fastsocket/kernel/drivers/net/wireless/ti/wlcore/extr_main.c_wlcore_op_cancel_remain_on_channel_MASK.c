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
struct wl1271 {int /*<<< orphan*/  roc_complete_work; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl1271*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct wl1271 *wl = hw->priv;

	FUNC1(DEBUG_MAC80211, "mac80211 croc");

	/* TODO: per-vif */
	FUNC2(wl);

	/*
	 * we can't just flush_work here, because it might deadlock
	 * (as we might get called from the same workqueue)
	 */
	FUNC0(&wl->roc_complete_work);
	FUNC3(wl);

	return 0;
}