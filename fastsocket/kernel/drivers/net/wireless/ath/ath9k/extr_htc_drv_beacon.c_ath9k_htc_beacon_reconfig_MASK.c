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
struct htc_beacon_config {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {TYPE_1__* ah; struct htc_beacon_config cur_beacon_conf; } ;
struct TYPE_2__ {int opmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,struct htc_beacon_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,struct htc_beacon_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,struct htc_beacon_config*) ; 
 struct ath_common* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC3(priv->ah);
	struct htc_beacon_config *cur_conf = &priv->cur_beacon_conf;

	switch (priv->ah->opmode) {
	case NL80211_IFTYPE_STATION:
		FUNC2(priv, cur_conf);
		break;
	case NL80211_IFTYPE_ADHOC:
		FUNC0(priv, cur_conf);
		break;
	case NL80211_IFTYPE_AP:
		FUNC1(priv, cur_conf);
		break;
	default:
		FUNC4(common, CONFIG, "Unsupported beaconing mode\n");
		return;
	}
}