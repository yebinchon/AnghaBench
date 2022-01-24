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
struct il_station_priv_common {int /*<<< orphan*/  sta_id; } ;
struct il_priv {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		  struct ieee80211_sta *sta)
{
	struct il_priv *il = hw->priv;
	struct il_station_priv_common *sta_common = (void *)sta->drv_priv;
	int ret;

	FUNC3(&il->mutex);
	FUNC0("enter station %pM\n", sta->addr);

	ret = FUNC2(il, sta_common->sta_id, sta->addr);
	if (ret)
		FUNC1("Error removing station %pM\n", sta->addr);

	FUNC0("leave ret %d\n", ret);
	FUNC4(&il->mutex);

	return ret;
}