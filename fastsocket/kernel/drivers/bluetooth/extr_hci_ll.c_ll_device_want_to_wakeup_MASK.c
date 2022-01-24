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
struct ll_struct {int hcill_state; int /*<<< orphan*/  hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
#define  HCILL_ASLEEP 129 
#define  HCILL_ASLEEP_TO_AWAKE 128 
 int /*<<< orphan*/  HCILL_WAKE_UP_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct ll_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct hci_uart *hu)
{
	unsigned long flags;
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p", hu);

	/* lock hcill state */
	FUNC5(&ll->hcill_lock, flags);

	switch (ll->hcill_state) {
	case HCILL_ASLEEP_TO_AWAKE:
		/*
		 * This state means that both the host and the BRF chip
		 * have simultaneously sent a wake-up-indication packet.
		 * Traditionaly, in this case, receiving a wake-up-indication
		 * was enough and an additional wake-up-ack wasn't needed.
		 * This has changed with the BRF6350, which does require an
		 * explicit wake-up-ack. Other BRF versions, which do not
		 * require an explicit ack here, do accept it, thus it is
		 * perfectly safe to always send one.
		 */
		FUNC0("dual wake-up-indication");
		/* deliberate fall-through - do not add break */
	case HCILL_ASLEEP:
		/* acknowledge device wake up */
		if (FUNC4(HCILL_WAKE_UP_ACK, hu) < 0) {
			FUNC1("cannot acknowledge device wake up");
			goto out;
		}
		break;
	default:
		/* any other state is illegal */
		FUNC1("received HCILL_WAKE_UP_IND in state %ld", ll->hcill_state);
		break;
	}

	/* send pending packets and change state to HCILL_AWAKE */
	FUNC2(ll);

out:
	FUNC6(&ll->hcill_lock, flags);

	/* actually send the packets */
	FUNC3(hu);
}