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
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bssid; int /*<<< orphan*/  iw_mode; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct il_priv *il = hw->priv;

	FUNC4(&il->mutex);
	FUNC0("enter: type %d, addr %pM\n", vif->type, vif->addr);

	FUNC1(il->vif != vif);
	il->vif = NULL;
	il->iw_mode = NL80211_IFTYPE_UNSPECIFIED;
	FUNC2(il, vif);
	FUNC3(il->bssid, 0, ETH_ALEN);

	FUNC0("leave\n");
	FUNC5(&il->mutex);
}