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
struct ieee80211_vif {int /*<<< orphan*/  bss_conf; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int operating; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  if_type; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wl*,char*,int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct b43_wl *wl = FUNC6(hw);
	struct b43_wldev *dev;
	int err = -EOPNOTSUPP;

	/* TODO: allow WDS/AP devices to coexist */

	if (vif->type != NL80211_IFTYPE_AP &&
	    vif->type != NL80211_IFTYPE_MESH_POINT &&
	    vif->type != NL80211_IFTYPE_STATION &&
	    vif->type != NL80211_IFTYPE_WDS &&
	    vif->type != NL80211_IFTYPE_ADHOC)
		return -EOPNOTSUPP;

	FUNC8(&wl->mutex);
	if (wl->operating)
		goto out_mutex_unlock;

	FUNC5(wl, "Adding Interface type %d\n", vif->type);

	dev = wl->current_dev;
	wl->operating = true;
	wl->vif = vif;
	wl->if_type = vif->type;
	FUNC7(wl->mac_addr, vif->addr, ETH_ALEN);

	FUNC0(dev);
	FUNC2(dev);
	FUNC3(dev, 0);
	FUNC4(dev);

	err = 0;
 out_mutex_unlock:
	FUNC9(&wl->mutex);

	if (err == 0)
		FUNC1(hw, vif, &vif->bss_conf, ~0);

	return err;
}