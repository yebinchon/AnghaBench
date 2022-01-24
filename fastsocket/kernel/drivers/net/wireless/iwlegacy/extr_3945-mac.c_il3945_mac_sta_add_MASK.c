#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct il_priv {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  sta_id; } ;
struct il3945_sta_priv {TYPE_1__ common; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IL_INVALID_STATION ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int,struct ieee80211_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		   struct ieee80211_sta *sta)
{
	struct il_priv *il = hw->priv;
	struct il3945_sta_priv *sta_priv = (void *)sta->drv_priv;
	int ret;
	bool is_ap = vif->type == NL80211_IFTYPE_STATION;
	u8 sta_id;

	FUNC4(&il->mutex);
	FUNC0("station %pM\n", sta->addr);
	sta_priv->common.sta_id = IL_INVALID_STATION;

	ret = FUNC3(il, sta->addr, is_ap, sta, &sta_id);
	if (ret) {
		FUNC1("Unable to add station %pM (%d)\n", sta->addr, ret);
		/* Should we return success if return code is EEXIST ? */
		FUNC5(&il->mutex);
		return ret;
	}

	sta_priv->common.sta_id = sta_id;

	/* Initialize rate scaling */
	FUNC0("Initializing rate scaling for station %pM\n", sta->addr);
	FUNC2(il, sta, sta_id);
	FUNC5(&il->mutex);

	return 0;
}