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
struct ar9170 {int /*<<< orphan*/  usb_tasklet; int /*<<< orphan*/  tx_ampdu_upload; int /*<<< orphan*/  tx_total_pending; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ar9170 *ar, struct sk_buff *skb)
{
	struct ieee80211_tx_info *txinfo = FUNC0(skb);

	FUNC1(&ar->tx_total_pending);

	if (txinfo->flags & IEEE80211_TX_CTL_AMPDU)
		FUNC1(&ar->tx_ampdu_upload);

	if (FUNC2(skb))
		FUNC3(&ar->usb_tasklet);
}