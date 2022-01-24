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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/ * addr; } ;
struct ieee80211_key_conf {int hw_key_idx; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {struct b43_wldev* current_dev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct b43_wldev*) ; 
 struct b43_wl* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modparam_hwtkip ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   struct ieee80211_key_conf *keyconf,
				   struct ieee80211_sta *sta,
				   u32 iv32, u16 *phase1key)
{
	struct b43_wl *wl = FUNC3(hw);
	struct b43_wldev *dev;
	int index = keyconf->hw_key_idx;

	if (FUNC0(!modparam_hwtkip))
		return;

	/* This is only called from the RX path through mac80211, where
	 * our mutex is already locked. */
	FUNC0(!FUNC5(&wl->mutex));
	dev = wl->current_dev;
	FUNC0(!dev || FUNC2(dev) < B43_STAT_INITIALIZED);

	FUNC4(dev, index, NULL);	/* First zero out mac to avoid race */

	FUNC6(dev, index, iv32, phase1key);
	/* only pairwise TKIP keys are supported right now */
	if (FUNC1(!sta))
		return;
	FUNC4(dev, index, sta->addr);
}