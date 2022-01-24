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
struct wl1251 {struct sk_buff** tx_frames; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_queue; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 int FW_TX_CMPLT_BLOCK_SIZE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct sk_buff*) ; 

void FUNC4(struct wl1251 *wl)
{
	int i;
	struct sk_buff *skb;
	struct ieee80211_tx_info *info;

	/* TX failure */
/* 	control->flags = 0; FIXME */

	while ((skb = FUNC2(&wl->tx_queue))) {
		info = FUNC0(skb);

		FUNC3(DEBUG_TX, "flushing skb 0x%p", skb);

		if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS))
				continue;

		FUNC1(wl->hw, skb);
	}

	for (i = 0; i < FW_TX_CMPLT_BLOCK_SIZE; i++)
		if (wl->tx_frames[i] != NULL) {
			skb = wl->tx_frames[i];
			info = FUNC0(skb);

			if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS))
				continue;

			FUNC1(wl->hw, skb);
			wl->tx_frames[i] = NULL;
		}
}