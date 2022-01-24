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
struct sk_buff_head {int dummy; } ;
struct zd_mac {scalar_t__ ack_pending; int /*<<< orphan*/  ack_signal; struct sk_buff_head ack_wait_queue; } ;
struct zd_ctrlset {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; struct ieee80211_hw** rate_driver_data; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 scalar_t__ ZD_MAC_MAX_ACK_WAITERS ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 struct zd_mac* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct sk_buff *skb, int error)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hw *hw = info->rate_driver_data[0];
	struct zd_mac *mac = FUNC8(hw);

	FUNC1(info);

	FUNC4(skb, sizeof(struct zd_ctrlset));
	if (FUNC7(error ||
	    (info->flags & IEEE80211_TX_CTL_NO_ACK))) {
		/*
		 * FIXME : do we need to fill in anything ?
		 */
		FUNC2(hw, skb);
	} else {
		struct sk_buff_head *q = &mac->ack_wait_queue;

		FUNC6(q, skb);
		while (FUNC5(q) > ZD_MAC_MAX_ACK_WAITERS) {
			FUNC9(hw, FUNC3(q),
					 mac->ack_pending ? mac->ack_signal : 0,
					 NULL);
			mac->ack_pending = 0;
		}
	}
}