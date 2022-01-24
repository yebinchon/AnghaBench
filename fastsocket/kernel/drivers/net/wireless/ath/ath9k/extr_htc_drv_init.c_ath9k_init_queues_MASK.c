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
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int* hwq_map; int beaconq; int cabq; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_AC_BE ; 
 int /*<<< orphan*/  IEEE80211_AC_BK ; 
 int /*<<< orphan*/  IEEE80211_AC_VI ; 
 int /*<<< orphan*/  IEEE80211_AC_VO ; 
 int FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*) ; 

__attribute__((used)) static int FUNC6(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC4(priv->ah);
	int i;

	for (i = 0; i < FUNC0(priv->hwq_map); i++)
		priv->hwq_map[i] = -1;

	priv->beaconq = FUNC3(priv->ah);
	if (priv->beaconq == -1) {
		FUNC5(common, "Unable to setup BEACON xmit queue\n");
		goto err;
	}

	priv->cabq = FUNC1(priv);
	if (priv->cabq == -1) {
		FUNC5(common, "Unable to setup CAB xmit queue\n");
		goto err;
	}

	if (!FUNC2(priv, IEEE80211_AC_BE)) {
		FUNC5(common, "Unable to setup xmit queue for BE traffic\n");
		goto err;
	}

	if (!FUNC2(priv, IEEE80211_AC_BK)) {
		FUNC5(common, "Unable to setup xmit queue for BK traffic\n");
		goto err;
	}
	if (!FUNC2(priv, IEEE80211_AC_VI)) {
		FUNC5(common, "Unable to setup xmit queue for VI traffic\n");
		goto err;
	}
	if (!FUNC2(priv, IEEE80211_AC_VO)) {
		FUNC5(common, "Unable to setup xmit queue for VO traffic\n");
		goto err;
	}

	return 0;

err:
	return -EINVAL;
}