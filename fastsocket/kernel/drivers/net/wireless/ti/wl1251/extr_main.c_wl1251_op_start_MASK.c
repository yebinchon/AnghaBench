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
struct wl1251 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  chip_id; } ;
struct wiphy {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  hw_version; } ;
struct ieee80211_hw {struct wiphy* wiphy; struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ WL1251_STATE_OFF ; 
 scalar_t__ WL1251_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wl1251*) ; 
 int FUNC4 (struct wl1251*) ; 
 int FUNC5 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1251*) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw)
{
	struct wl1251 *wl = hw->priv;
	struct wiphy *wiphy = hw->wiphy;
	int ret = 0;

	FUNC6(DEBUG_MAC80211, "mac80211 start");

	FUNC0(&wl->mutex);

	if (wl->state != WL1251_STATE_OFF) {
		FUNC7("cannot start because not in off state: %d",
			     wl->state);
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC5(wl);
	if (ret < 0)
		goto out;

	ret = FUNC4(wl);
	if (ret < 0)
		goto out;

	ret = FUNC8(wl);
	if (ret < 0)
		goto out;

	ret = FUNC3(wl);
	if (ret < 0)
		goto out;

	wl->state = WL1251_STATE_ON;

	FUNC9("firmware booted (%s)", wl->fw_ver);

	/* update hw/fw version info in wiphy struct */
	wiphy->hw_version = wl->chip_id;
	FUNC2(wiphy->fw_version, wl->fw_ver, sizeof(wiphy->fw_version));

out:
	if (ret < 0)
		FUNC10(wl);

	FUNC1(&wl->mutex);

	return ret;
}