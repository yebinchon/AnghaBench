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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int /*<<< orphan*/  capflags; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int IEEE80211_RC_SUPP_RATES_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,struct ath9k_htc_target_rate*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*,struct ieee80211_sta*,struct ath9k_htc_target_rate*) ; 
 struct ath_common* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_target_rate*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_sta *sta, u32 changed)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC4(priv->ah);
	struct ath9k_htc_target_rate trate;

	FUNC8(&priv->mutex);
	FUNC1(priv);

	if (changed & IEEE80211_RC_SUPP_RATES_CHANGED) {
		FUNC7(&trate, 0, sizeof(struct ath9k_htc_target_rate));
		FUNC3(priv, sta, &trate);
		if (!FUNC2(priv, &trate))
			FUNC5(common, CONFIG,
				"Supported rates for sta: %pM updated, rate caps: 0x%X\n",
				sta->addr, FUNC6(trate.capflags));
		else
			FUNC5(common, CONFIG,
				"Unable to update supported rates for sta: %pM\n",
				sta->addr);
	}

	FUNC0(priv);
	FUNC9(&priv->mutex);
}