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
struct mwl8k_priv {scalar_t__ ap_fw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_hw *hw,
			    struct ieee80211_vif *vif,
			    struct ieee80211_sta *sta)
{
	struct mwl8k_priv *priv = hw->priv;

	if (priv->ap_fw)
		return FUNC0(hw, vif, sta->addr);
	else
		return FUNC1(hw, vif, sta->addr);
}