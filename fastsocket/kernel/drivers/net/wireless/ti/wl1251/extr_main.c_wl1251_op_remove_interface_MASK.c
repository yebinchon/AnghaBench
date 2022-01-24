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
struct wl1251 {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif)
{
	struct wl1251 *wl = hw->priv;

	FUNC0(&wl->mutex);
	FUNC2(DEBUG_MAC80211, "mac80211 remove interface");
	wl->vif = NULL;
	FUNC1(&wl->mutex);
}