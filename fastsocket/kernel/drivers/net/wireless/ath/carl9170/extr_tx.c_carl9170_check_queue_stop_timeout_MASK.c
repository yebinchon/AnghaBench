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
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct carl9170_tx_info {scalar_t__ timeout; } ;
struct ar9170 {TYPE_2__* tx_status; TYPE_1__* hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_QUEUE_STUCK_TIMEOUT ; 
 int /*<<< orphan*/  CARL9170_RR_STUCK_TX ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ar9170 *ar)
{
	int i;
	struct sk_buff *skb;
	struct ieee80211_tx_info *txinfo;
	struct carl9170_tx_info *arinfo;
	bool restart = false;

	for (i = 0; i < ar->hw->queues; i++) {
		FUNC4(&ar->tx_status[i].lock);

		skb = FUNC3(&ar->tx_status[i]);

		if (!skb)
			goto next;

		txinfo = FUNC0(skb);
		arinfo = (void *) txinfo->rate_driver_data;

		if (FUNC6(arinfo->timeout +
		    FUNC2(CARL9170_QUEUE_STUCK_TIMEOUT)) == true)
			restart = true;

next:
		FUNC5(&ar->tx_status[i].lock);
	}

	if (restart) {
		/*
		 * At least one queue has been stuck for long enough.
		 * Give the device a kick and hope it gets back to
		 * work.
		 *
		 * possible reasons may include:
		 *  - frames got lost/corrupted (bad connection to the device)
		 *  - stalled rx processing/usb controller hiccups
		 *  - firmware errors/bugs
		 *  - every bug you can think of.
		 *  - all bugs you can't...
		 *  - ...
		 */
		FUNC1(ar, CARL9170_RR_STUCK_TX);
	}
}