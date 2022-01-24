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
struct ll_struct {int hcill_state; int /*<<< orphan*/  hcill_lock; int /*<<< orphan*/  tx_wait_q; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct ll_struct* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  HCILL_ASLEEP 130 
#define  HCILL_ASLEEP_TO_AWAKE 129 
#define  HCILL_AWAKE 128 
 int /*<<< orphan*/  HCILL_WAKE_UP_IND ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct hci_uart *hu, struct sk_buff *skb)
{
	unsigned long flags = 0;
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p skb %p", hu, skb);

	/* Prepend skb with frame type */
	FUNC4(FUNC6(skb, 1), &FUNC2(skb)->pkt_type, 1);

	/* lock hcill state */
	FUNC8(&ll->hcill_lock, flags);

	/* act according to current state */
	switch (ll->hcill_state) {
	case HCILL_AWAKE:
		FUNC0("device awake, sending normally");
		FUNC7(&ll->txq, skb);
		break;
	case HCILL_ASLEEP:
		FUNC0("device asleep, waking up and queueing packet");
		/* save packet for later */
		FUNC7(&ll->tx_wait_q, skb);
		/* awake device */
		if (FUNC5(HCILL_WAKE_UP_IND, hu) < 0) {
			FUNC1("cannot wake up device");
			break;
		}
		ll->hcill_state = HCILL_ASLEEP_TO_AWAKE;
		break;
	case HCILL_ASLEEP_TO_AWAKE:
		FUNC0("device waking up, queueing packet");
		/* transient state; just keep packet for later */
		FUNC7(&ll->tx_wait_q, skb);
		break;
	default:
		FUNC1("illegal hcill state: %ld (losing packet)", ll->hcill_state);
		FUNC3(skb);
		break;
	}

	FUNC9(&ll->hcill_lock, flags);

	return 0;
}