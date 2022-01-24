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
struct sk_buff {int len; size_t queue_mapping; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_work; int /*<<< orphan*/ * tx_queue_stopped; int /*<<< orphan*/ * tx_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
		      struct ieee80211_tx_control *control,
		      struct sk_buff *skb)
{
	struct b43_wl *wl = FUNC1(hw);

	if (FUNC7(skb->len < 2 + 2 + 6)) {
		/* Too short, this can't be a valid frame. */
		FUNC2(hw, skb);
		return;
	}
	FUNC0(FUNC6(skb)->nr_frags);

	FUNC5(&wl->tx_queue[skb->queue_mapping], skb);
	if (!wl->tx_queue_stopped[skb->queue_mapping]) {
		FUNC3(wl->hw, &wl->tx_work);
	} else {
		FUNC4(wl->hw, skb->queue_mapping);
	}
}