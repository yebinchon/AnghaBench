#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  xmit_lock; int /*<<< orphan*/  super_tx_queue; int /*<<< orphan*/  tqueue; } ;
typedef  TYPE_1__ isdn_net_local ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(isdn_net_local *lp, struct sk_buff *skb)
{
	if (FUNC0()) {
		// we can't grab the lock from irq context, 
		// so we just queue the packet
		FUNC4(&lp->super_tx_queue, skb);
		FUNC3(&lp->tqueue);
		return;
	}

	FUNC5(&lp->xmit_lock);
	if (!FUNC1(lp)) {
		FUNC2(lp, skb);
	} else {
		FUNC4(&lp->super_tx_queue, skb);
	}
	FUNC6(&lp->xmit_lock);
}