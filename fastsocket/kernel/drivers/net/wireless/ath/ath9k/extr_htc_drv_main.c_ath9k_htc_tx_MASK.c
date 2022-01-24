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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,int) ; 
 int FUNC2 (struct ath9k_htc_priv*) ; 
 int FUNC3 (struct ath9k_htc_priv*,int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 struct ath_common* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct ieee80211_hw *hw,
			 struct ieee80211_tx_control *control,
			 struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr;
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC4(priv->ah);
	int padpos, padsize, ret, slot;

	hdr = (struct ieee80211_hdr *) skb->data;

	/* Add the padding after the header if this is not already done */
	padpos = FUNC7(hdr->frame_control);
	padsize = padpos & 3;
	if (padsize && skb->len > padpos) {
		if (FUNC9(skb) < padsize) {
			FUNC5(common, XMIT, "No room for padding\n");
			goto fail_tx;
		}
		FUNC10(skb, padsize);
		FUNC8(skb->data, skb->data + padsize, padpos);
	}

	slot = FUNC2(priv);
	if (slot < 0) {
		FUNC5(common, XMIT, "No free TX slot\n");
		goto fail_tx;
	}

	ret = FUNC3(priv, control->sta, skb, slot, false);
	if (ret != 0) {
		FUNC5(common, XMIT, "Tx failed\n");
		goto clear_slot;
	}

	FUNC0(priv);

	return;

clear_slot:
	FUNC1(priv, slot);
fail_tx:
	FUNC6(skb);
}