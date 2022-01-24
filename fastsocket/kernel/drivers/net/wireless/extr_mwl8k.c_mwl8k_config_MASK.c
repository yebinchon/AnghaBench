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
typedef  int u32 ;
struct mwl8k_priv {scalar_t__ ap_fw; } ;
struct ieee80211_conf {int flags; int power_level; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; struct ieee80211_conf conf; } ;

/* Variables and functions */
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_IDLE ; 
 int FUNC0 (struct ieee80211_hw*,int,int) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct ieee80211_hw*,int) ; 
 int FUNC4 (struct ieee80211_hw*,struct ieee80211_conf*) ; 
 int FUNC5 (struct ieee80211_hw*,struct ieee80211_conf*,int) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw, u32 changed)
{
	struct ieee80211_conf *conf = &hw->conf;
	struct mwl8k_priv *priv = hw->priv;
	int rc;

	rc = FUNC6(hw);
	if (rc)
		return rc;

	if (conf->flags & IEEE80211_CONF_IDLE)
		rc = FUNC1(hw);
	else
		rc = FUNC2(hw);
	if (rc)
		goto out;

	if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
		rc = FUNC4(hw, conf);
		if (rc)
			goto out;
	}

	if (conf->power_level > 18)
		conf->power_level = 18;

	if (priv->ap_fw) {

		if (conf->flags & IEEE80211_CONF_CHANGE_POWER) {
			rc = FUNC5(hw, conf, conf->power_level);
			if (rc)
				goto out;
		}


	} else {
		rc = FUNC3(hw, conf->power_level);
		if (rc)
			goto out;
		rc = FUNC0(hw, 0x7, 0x7);
	}

out:
	FUNC7(hw);

	return rc;
}