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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath_common {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  queued_cnt; } ;
struct TYPE_3__ {struct ieee80211_vif** bslot; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  beacon_lock; int /*<<< orphan*/  hw; TYPE_2__ tx; TYPE_1__ cur_beacon_conf; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,int) ; 
 int FUNC1 (struct ath9k_htc_priv*) ; 
 int FUNC2 (struct ath9k_htc_priv*,int /*<<< orphan*/ *,struct sk_buff*,int,int) ; 
 struct ath_common* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ath9k_htc_priv *priv,
				    int slot)
{
	struct ath_common *common = FUNC3(priv->ah);
	struct ieee80211_vif *vif;
	struct sk_buff *skb;
	struct ieee80211_hdr *hdr;
	int padpos, padsize, ret, tx_slot;

	FUNC11(&priv->beacon_lock);

	vif = priv->cur_beacon_conf.bslot[slot];

	skb = FUNC6(priv->hw, vif);

	while(skb) {
		hdr = (struct ieee80211_hdr *) skb->data;

		padpos = FUNC7(hdr->frame_control);
		padsize = padpos & 3;
		if (padsize && skb->len > padpos) {
			if (FUNC9(skb) < padsize) {
				FUNC5(skb);
				goto next;
			}
			FUNC10(skb, padsize);
			FUNC8(skb->data, skb->data + padsize, padpos);
		}

		tx_slot = FUNC1(priv);
		if (tx_slot < 0) {
			FUNC4(common, XMIT, "No free CAB slot\n");
			FUNC5(skb);
			goto next;
		}

		ret = FUNC2(priv, NULL, skb, tx_slot, true);
		if (ret != 0) {
			FUNC0(priv, tx_slot);
			FUNC5(skb);

			FUNC4(common, XMIT, "Failed to send CAB frame\n");
		} else {
			FUNC11(&priv->tx.tx_lock);
			priv->tx.queued_cnt++;
			FUNC12(&priv->tx.tx_lock);
		}
	next:
		skb = FUNC6(priv->hw, vif);
	}

	FUNC12(&priv->beacon_lock);
}