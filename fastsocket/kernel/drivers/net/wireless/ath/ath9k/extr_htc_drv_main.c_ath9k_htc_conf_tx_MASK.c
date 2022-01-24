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
typedef  scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_burstTime; int /*<<< orphan*/  tqi_cwmax; int /*<<< orphan*/  tqi_cwmin; int /*<<< orphan*/  tqi_aifs; } ;
struct ath9k_htc_priv {int* hwq_map; int /*<<< orphan*/  mutex; TYPE_1__* ah; } ;
struct TYPE_2__ {scalar_t__ opmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 size_t IEEE80211_AC_BE ; 
 scalar_t__ IEEE80211_NUM_ACS ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*) ; 
 int FUNC6 (struct ath9k_htc_priv*,int,struct ath9k_tx_queue_info*) ; 
 int FUNC7 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_tx_queue_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif, u16 queue,
			     const struct ieee80211_tx_queue_params *params)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC3(priv->ah);
	struct ath9k_tx_queue_info qi;
	int ret = 0, qnum;

	if (queue >= IEEE80211_NUM_ACS)
		return 0;

	FUNC9(&priv->mutex);
	FUNC2(priv);

	FUNC8(&qi, 0, sizeof(struct ath9k_tx_queue_info));

	qi.tqi_aifs = params->aifs;
	qi.tqi_cwmin = params->cw_min;
	qi.tqi_cwmax = params->cw_max;
	qi.tqi_burstTime = params->txop * 32;

	qnum = FUNC7(queue, priv->hwq_map);

	FUNC4(common, CONFIG,
		"Configure tx [queue/hwq] [%d/%d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\n",
		queue, qnum, params->aifs, params->cw_min,
		params->cw_max, params->txop);

	ret = FUNC6(priv, qnum, &qi);
	if (ret) {
		FUNC5(common, "TXQ Update failed\n");
		goto out;
	}

	if ((priv->ah->opmode == NL80211_IFTYPE_ADHOC) &&
	    (qnum == priv->hwq_map[IEEE80211_AC_BE]))
		    FUNC0(priv);
out:
	FUNC1(priv);
	FUNC10(&priv->mutex);

	return ret;
}