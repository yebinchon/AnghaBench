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
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int /*<<< orphan*/  capflags; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int FUNC0 (struct ath9k_htc_priv*,struct ath9k_htc_target_rate*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,struct ieee80211_sta*,struct ath9k_htc_target_rate*) ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_target_rate*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ath9k_htc_priv *priv,
				struct ieee80211_sta *sta)
{
	struct ath_common *common = FUNC2(priv->ah);
	struct ath9k_htc_target_rate trate;
	int ret;

	FUNC5(&trate, 0, sizeof(struct ath9k_htc_target_rate));
	FUNC1(priv, sta, &trate);
	ret = FUNC0(priv, &trate);
	if (!ret)
		FUNC3(common, CONFIG,
			"Updated target sta: %pM, rate caps: 0x%X\n",
			sta->addr, FUNC4(trate.capflags));
}