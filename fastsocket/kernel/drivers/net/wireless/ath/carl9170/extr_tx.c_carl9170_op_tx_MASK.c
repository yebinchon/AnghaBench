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
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_control {struct ieee80211_sta* sta; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_sta_info {int /*<<< orphan*/  pending_frames; } ;
struct ar9170 {int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/ * tx_pending; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*) ; 
 int FUNC6 (struct ar9170*,struct ieee80211_sta*,struct sk_buff*,struct ieee80211_tx_info*) ; 
 int FUNC7 (struct ar9170*,struct ieee80211_sta*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct ieee80211_hw *hw,
		    struct ieee80211_tx_control *control,
		    struct sk_buff *skb)
{
	struct ar9170 *ar = hw->priv;
	struct ieee80211_tx_info *info;
	struct ieee80211_sta *sta = control->sta;
	bool run;

	if (FUNC11(!FUNC1(ar)))
		goto err_free;

	info = FUNC0(skb);

	if (FUNC11(FUNC7(ar, sta, skb)))
		goto err_free;

	FUNC4(ar, skb);
	/*
	 * from now on, one has to use carl9170_tx_status to free
	 * all ressouces which are associated with the frame.
	 */

	if (sta) {
		struct carl9170_sta_info *stai = (void *) sta->drv_priv;
		FUNC2(&stai->pending_frames);
	}

	if (info->flags & IEEE80211_TX_CTL_AMPDU) {
		/* to static code analyzers and reviewers:
		 * mac80211 guarantees that a valid "sta"
		 * reference is present, if a frame is to
		 * be part of an ampdu. Hence any extra
		 * sta == NULL checks are redundant in this
		 * special case.
		 */
		run = FUNC6(ar, sta, skb, info);
		if (run)
			FUNC5(ar);

	} else {
		unsigned int queue = FUNC9(skb);

		FUNC10(&ar->tx_pending[queue], skb);
	}

	FUNC3(ar);
	return;

err_free:
	ar->tx_dropped++;
	FUNC8(ar->hw, skb);
}