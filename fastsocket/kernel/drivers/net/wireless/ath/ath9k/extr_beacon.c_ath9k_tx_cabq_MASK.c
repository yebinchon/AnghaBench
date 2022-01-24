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
struct sk_buff {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_tx_control {int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cabq; } ;
struct ath_softc {TYPE_1__ beacon; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMIT ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct ieee80211_hw*,struct sk_buff*,struct ath_tx_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_tx_control*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw, struct sk_buff *skb)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC0(sc->sc_ah);
	struct ath_tx_control txctl;

	FUNC4(&txctl, 0, sizeof(struct ath_tx_control));
	txctl.txq = sc->beacon.cabq;

	FUNC1(common, XMIT, "transmitting CABQ packet, skb: %p\n", skb);

	if (FUNC2(hw, skb, &txctl) != 0) {
		FUNC1(common, XMIT, "CABQ TX failed\n");
		FUNC3(hw, skb);
	}
}