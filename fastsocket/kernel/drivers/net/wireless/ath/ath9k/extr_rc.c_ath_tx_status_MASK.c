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
typedef  int u8 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath_softc {TYPE_1__* hw; } ;
struct ath_rate_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PAE ; 
 scalar_t__ IEEE80211_AC_VO ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_STAT_AMPDU ; 
 int IEEE80211_TX_STAT_TX_FILTERED ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ath_rate_priv*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ath_softc*,struct ieee80211_sta*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int* FUNC5 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sta*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(void *priv, struct ieee80211_supported_band *sband,
			  struct ieee80211_sta *sta, void *priv_sta,
			  struct sk_buff *skb)
{
	struct ath_softc *sc = priv;
	struct ath_rate_priv *ath_rc_priv = priv_sta;
	struct ieee80211_tx_info *tx_info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	__le16 fc = hdr->frame_control;

	if (!priv_sta || !FUNC6(fc))
		return;

	/* This packet was aggregated but doesn't carry status info */
	if ((tx_info->flags & IEEE80211_TX_CTL_AMPDU) &&
	    !(tx_info->flags & IEEE80211_TX_STAT_AMPDU))
		return;

	if (tx_info->flags & IEEE80211_TX_STAT_TX_FILTERED)
		return;

	FUNC1(sc, ath_rc_priv, skb);

	/* Check if aggregation has to be enabled for this tid */
	if (FUNC3(&sc->hw->conf) &&
	    !(skb->protocol == FUNC4(ETH_P_PAE))) {
		if (FUNC7(fc) &&
		    FUNC9(skb) != IEEE80211_AC_VO) {
			u8 *qc, tid;

			qc = FUNC5(hdr);
			tid = qc[0] & 0xf;

			if(FUNC2(sc, sta, tid))
				FUNC8(sta, tid, 0);
		}
	}
}