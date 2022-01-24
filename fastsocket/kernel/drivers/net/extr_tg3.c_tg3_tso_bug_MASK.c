#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tg3 {TYPE_1__* dev; int /*<<< orphan*/ * napi; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_6__ {int gso_segs; } ;
struct TYPE_5__ {int features; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct tg3 *tp, struct sk_buff *skb)
{
	struct sk_buff *segs, *nskb;
	u32 frag_cnt_est = FUNC5(skb)->gso_segs * 3;

	/* Estimate the number of fragments in the worst case */
	if (FUNC9(FUNC8(&tp->napi[0]) <= frag_cnt_est)) {
		FUNC2(tp->dev);

		/* netif_tx_stop_queue() must be done before checking
		 * checking tx index in tg3_tx_avail() below, because in
		 * tg3_tx(), we update tx index before checking for
		 * netif_tx_queue_stopped().
		 */
		FUNC6();
		if (FUNC8(&tp->napi[0]) <= frag_cnt_est)
			return NETDEV_TX_BUSY;

		FUNC3(tp->dev);
	}

	segs = FUNC4(skb, tp->dev->features & ~NETIF_F_TSO);
	if (FUNC0(segs))
		goto tg3_tso_bug_end;

	do {
		nskb = segs;
		segs = segs->next;
		nskb->next = NULL;
		FUNC7(nskb, tp->dev);
	} while (segs);

tg3_tso_bug_end:
	FUNC1(skb);

	return NETDEV_TX_OK;
}