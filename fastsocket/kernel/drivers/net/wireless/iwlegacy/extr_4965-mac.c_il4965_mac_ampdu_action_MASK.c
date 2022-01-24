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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; TYPE_1__* cfg; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_2__ {int sku; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EACCES ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int IL_SKU_N ; 
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int FUNC1 (struct il_priv*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct il_priv*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct il_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC8(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			enum ieee80211_ampdu_mlme_action action,
			struct ieee80211_sta *sta, u16 tid, u16 * ssn,
			u8 buf_size)
{
	struct il_priv *il = hw->priv;
	int ret = -EINVAL;

	FUNC0("A-MPDU action on addr %pM tid %d\n", sta->addr, tid);

	if (!(il->cfg->sku & IL_SKU_N))
		return -EACCES;

	FUNC5(&il->mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		FUNC0("start Rx\n");
		ret = FUNC1(il, sta, tid, *ssn);
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC0("stop Rx\n");
		ret = FUNC2(il, sta, tid);
		if (FUNC7(S_EXIT_PENDING, &il->status))
			ret = 0;
		break;
	case IEEE80211_AMPDU_TX_START:
		FUNC0("start Tx\n");
		ret = FUNC3(il, vif, sta, tid, ssn);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC0("stop Tx\n");
		ret = FUNC4(il, vif, sta, tid);
		if (FUNC7(S_EXIT_PENDING, &il->status))
			ret = 0;
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		ret = 0;
		break;
	}
	FUNC6(&il->mutex);

	return ret;
}