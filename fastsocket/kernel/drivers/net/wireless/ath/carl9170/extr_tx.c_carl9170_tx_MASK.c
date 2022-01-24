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
struct sk_buff {int dummy; } ;
struct ar9170 {int tx_schedule; int /*<<< orphan*/  tx_janitor; TYPE_1__* hw; int /*<<< orphan*/ * tx_status; int /*<<< orphan*/  tx_total_pending; int /*<<< orphan*/ * tx_pending; } ;
struct TYPE_2__ {unsigned int queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 unsigned int FUNC1 (struct ar9170*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct ar9170*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC8 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct ar9170 *ar)
{
	struct sk_buff *skb;
	unsigned int i, q;
	bool schedule_garbagecollector = false;

	ar->tx_schedule = false;

	if (FUNC13(!FUNC0(ar)))
		return;

	FUNC7(ar);

	for (i = 0; i < ar->hw->queues; i++) {
		while (!FUNC11(&ar->tx_pending[i])) {
			skb = FUNC5(ar, &ar->tx_pending[i]);
			if (FUNC13(!skb))
				break;

			if (FUNC13(FUNC6(ar, skb)))
				continue;

			FUNC3(ar, skb);

			FUNC2(&ar->tx_total_pending);

			q = FUNC1(ar, i);
			/*
			 * NB: tx_status[i] vs. tx_status[q],
			 * TODO: Move into pick_skb or alloc_dev_space.
			 */
			FUNC12(&ar->tx_status[q], skb);

			/*
			 * increase ref count to "2".
			 * Ref counting is the easiest way to solve the
			 * race between the urb's completion routine:
			 *	carl9170_tx_callback
			 * and wlan tx status functions:
			 *	carl9170_tx_status/janitor.
			 */
			FUNC4(skb);

			FUNC8(ar, skb);
			schedule_garbagecollector = true;
		}
	}

	if (!schedule_garbagecollector)
		return;

	FUNC9(ar->hw, &ar->tx_janitor,
		FUNC10(CARL9170_TX_TIMEOUT));
}