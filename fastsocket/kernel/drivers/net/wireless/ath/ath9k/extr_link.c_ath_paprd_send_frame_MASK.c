#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  txctl ;
struct sk_buff {int dummy; } ;
struct TYPE_12__ {TYPE_5__* rates; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  paprd; TYPE_6__ control; int /*<<< orphan*/  flags; int /*<<< orphan*/  band; int /*<<< orphan*/  txq; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct TYPE_10__ {TYPE_3__ chandef; } ;
struct ieee80211_hw {TYPE_4__ conf; } ;
struct ath_tx_control {int /*<<< orphan*/  paprd; TYPE_6__ control; int /*<<< orphan*/  flags; int /*<<< orphan*/  band; int /*<<< orphan*/  txq; } ;
struct TYPE_7__ {int /*<<< orphan*/ * txq_map; } ;
struct ath_softc {int /*<<< orphan*/  paprd_complete; TYPE_1__ tx; struct ath_hw* sc_ah; struct ieee80211_hw* hw; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_11__ {int idx; int count; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_PAPRD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 size_t IEEE80211_AC_BE ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_CTL_NO_ACK ; 
 int /*<<< orphan*/  IEEE80211_TX_RC_MCS ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_tx_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct ath_softc *sc, struct sk_buff *skb, int chain)
{
	struct ieee80211_hw *hw = sc->hw;
	struct ieee80211_tx_info *tx_info = FUNC1(skb);
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ath_tx_control txctl;
	int time_left;

	FUNC7(&txctl, 0, sizeof(txctl));
	txctl.txq = sc->tx.txq_map[IEEE80211_AC_BE];

	FUNC7(tx_info, 0, sizeof(*tx_info));
	tx_info->band = hw->conf.chandef.chan->band;
	tx_info->flags |= IEEE80211_TX_CTL_NO_ACK;
	tx_info->control.rates[0].idx = 0;
	tx_info->control.rates[0].count = 1;
	tx_info->control.rates[0].flags = IEEE80211_TX_RC_MCS;
	tx_info->control.rates[1].idx = -1;

	FUNC6(&sc->paprd_complete);
	txctl.paprd = FUNC0(chain);

	if (FUNC4(hw, skb, &txctl) != 0) {
		FUNC3(common, CALIBRATE, "PAPRD TX failed\n");
		FUNC5(skb);
		return false;
	}

	time_left = FUNC9(&sc->paprd_complete,
			FUNC8(ATH_PAPRD_TIMEOUT));

	if (!time_left)
		FUNC3(common, CALIBRATE,
			"Timeout waiting for paprd training on TX chain %d\n",
			chain);

	return !!time_left;
}