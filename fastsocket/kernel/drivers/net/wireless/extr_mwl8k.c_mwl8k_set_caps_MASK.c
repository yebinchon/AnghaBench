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
struct mwl8k_priv {int caps; int /*<<< orphan*/  band_50; int /*<<< orphan*/  band_24; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int MWL8K_CAP_2GHZ4 ; 
 int MWL8K_CAP_5GHZ ; 
 int MWL8K_CAP_BAND_MASK ; 
 int MWL8K_CAP_MIMO ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_hw *hw, u32 caps)
{
	struct mwl8k_priv *priv = hw->priv;

	if (priv->caps)
		return;

	if ((caps & MWL8K_CAP_2GHZ4) || !(caps & MWL8K_CAP_BAND_MASK)) {
		FUNC1(hw);
		if (caps & MWL8K_CAP_MIMO)
			FUNC0(hw, &priv->band_24, caps);
	}

	if (caps & MWL8K_CAP_5GHZ) {
		FUNC2(hw);
		if (caps & MWL8K_CAP_MIMO)
			FUNC0(hw, &priv->band_50, caps);
	}

	priv->caps = caps;
}