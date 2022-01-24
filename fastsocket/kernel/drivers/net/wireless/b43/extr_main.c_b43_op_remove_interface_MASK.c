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
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int operating; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mac_addr; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wl*,char*,int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif)
{
	struct b43_wl *wl = FUNC4(hw);
	struct b43_wldev *dev = wl->current_dev;

	FUNC3(wl, "Removing Interface type %d\n", vif->type);

	FUNC6(&wl->mutex);

	FUNC0(!wl->operating);
	FUNC0(wl->vif != vif);
	wl->vif = NULL;

	wl->operating = false;

	FUNC1(dev);
	FUNC5(wl->mac_addr, 0, ETH_ALEN);
	FUNC2(dev);

	FUNC7(&wl->mutex);
}