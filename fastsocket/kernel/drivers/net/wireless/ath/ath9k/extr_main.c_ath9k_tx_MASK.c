#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath_tx_control {TYPE_3__* txq; int /*<<< orphan*/  sta; } ;
struct TYPE_7__ {TYPE_3__** txq_map; } ;
struct ath_softc {TYPE_2__ tx; TYPE_4__* sc_ah; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  ps_flags; scalar_t__ ps_enabled; } ;
struct ath_common {int dummy; } ;
struct TYPE_6__ {int hw_caps; } ;
struct TYPE_9__ {scalar_t__ power_mode; TYPE_1__ caps; } ;
struct TYPE_8__ {int /*<<< orphan*/  axq_qnum; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_AUTOSLEEP ; 
 scalar_t__ ATH9K_PM_FULL_SLEEP ; 
 scalar_t__ ATH9K_PM_NETWORK_SLEEP ; 
 int /*<<< orphan*/  IEEE80211_FCTL_PM ; 
 int /*<<< orphan*/  PS ; 
 int /*<<< orphan*/  PS_WAIT_FOR_PSPOLL_DATA ; 
 int /*<<< orphan*/  PS_WAIT_FOR_TX_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XMIT ; 
 struct ath_common* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,char*) ; 
 scalar_t__ FUNC7 (struct ieee80211_hw*,struct sk_buff*,struct ath_tx_control*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_tx_control*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  txfailed ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw,
		     struct ieee80211_tx_control *control,
		     struct sk_buff *skb)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC1(sc->sc_ah);
	struct ath_tx_control txctl;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	unsigned long flags;

	if (sc->ps_enabled) {
		/*
		 * mac80211 does not set PM field for normal data frames, so we
		 * need to update that based on the current PS mode.
		 */
		if (FUNC11(hdr->frame_control) &&
		    !FUNC12(hdr->frame_control) &&
		    !FUNC10(hdr->frame_control)) {
			FUNC5(common, PS,
				"Add PM=1 for a TX frame while in PS mode\n");
			hdr->frame_control |= FUNC8(IEEE80211_FCTL_PM);
		}
	}

	if (FUNC18(sc->sc_ah->power_mode == ATH9K_PM_NETWORK_SLEEP)) {
		/*
		 * We are using PS-Poll and mac80211 can request TX while in
		 * power save mode. Need to wake up hardware for the TX to be
		 * completed and if needed, also for RX of buffered frames.
		 */
		FUNC4(sc);
		FUNC16(&sc->sc_pm_lock, flags);
		if (!(sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_AUTOSLEEP))
			FUNC2(sc->sc_ah, 0);
		if (FUNC13(hdr->frame_control)) {
			FUNC5(common, PS,
				"Sending PS-Poll to pick a buffered frame\n");
			sc->ps_flags |= PS_WAIT_FOR_PSPOLL_DATA;
		} else {
			FUNC5(common, PS, "Wake up to complete TX\n");
			sc->ps_flags |= PS_WAIT_FOR_TX_ACK;
		}
		/*
		 * The actual restore operation will happen only after
		 * the ps_flags bit is cleared. We are just dropping
		 * the ps_usecount here.
		 */
		FUNC17(&sc->sc_pm_lock, flags);
		FUNC3(sc);
	}

	/*
	 * Cannot tx while the hardware is in full sleep, it first needs a full
	 * chip reset to recover from that
	 */
	if (FUNC18(sc->sc_ah->power_mode == ATH9K_PM_FULL_SLEEP)) {
		FUNC6(common, "TX while HW is in FULL_SLEEP mode\n");
		goto exit;
	}

	FUNC14(&txctl, 0, sizeof(struct ath_tx_control));
	txctl.txq = sc->tx.txq_map[FUNC15(skb)];
	txctl.sta = control->sta;

	FUNC5(common, XMIT, "transmitting packet, skb: %p\n", skb);

	if (FUNC7(hw, skb, &txctl) != 0) {
		FUNC5(common, XMIT, "TX failed\n");
		FUNC0(txctl.txq->axq_qnum, txfailed);
		goto exit;
	}

	return;
exit:
	FUNC9(hw, skb);
}