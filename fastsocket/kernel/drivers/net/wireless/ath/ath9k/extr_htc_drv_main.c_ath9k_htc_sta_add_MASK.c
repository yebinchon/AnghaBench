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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif,
			     struct ieee80211_sta *sta)
{
	struct ath9k_htc_priv *priv = hw->priv;
	int ret;

	FUNC4(&priv->mutex);
	FUNC3(priv);
	ret = FUNC0(priv, vif, sta);
	if (!ret)
		FUNC1(priv, sta);
	FUNC2(priv);
	FUNC5(&priv->mutex);

	return ret;
}