#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
struct ath9k_htc_sta {int /*<<< orphan*/ * tid_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {TYPE_2__ tx; TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_PROGRESS ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 scalar_t__ FUNC0 (struct ath9k_htc_priv*,struct ath9k_htc_sta*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC3 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sta*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ath9k_htc_priv *priv,
				    struct ieee80211_vif *vif,
				    struct sk_buff *skb)
{
	struct ieee80211_sta *sta;
	struct ieee80211_hdr *hdr;
	__le16 fc;

	hdr = (struct ieee80211_hdr *) skb->data;
	fc = hdr->frame_control;

	FUNC7();

	sta = FUNC3(vif, hdr->addr1);
	if (!sta) {
		FUNC8();
		return;
	}

	if (sta && FUNC1(&priv->hw->conf) &&
	    !(skb->protocol == FUNC2(ETH_P_PAE))) {
		if (FUNC5(fc)) {
			u8 *qc, tid;
			struct ath9k_htc_sta *ista;

			qc = FUNC4(hdr);
			tid = qc[0] & 0xf;
			ista = (struct ath9k_htc_sta *)sta->drv_priv;
			if (FUNC0(priv, ista, tid)) {
				FUNC6(sta, tid, 0);
				FUNC9(&priv->tx.tx_lock);
				ista->tid_state[tid] = AGGR_PROGRESS;
				FUNC10(&priv->tx.tx_lock);
			}
		}
	}

	FUNC8();
}