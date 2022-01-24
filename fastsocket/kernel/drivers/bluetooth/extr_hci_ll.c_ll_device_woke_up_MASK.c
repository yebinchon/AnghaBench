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
struct ll_struct {scalar_t__ hcill_state; int /*<<< orphan*/  hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ HCILL_ASLEEP_TO_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ll_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hci_uart *hu)
{
	unsigned long flags;
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p", hu);

	/* lock hcill state */
	FUNC4(&ll->hcill_lock, flags);

	/* sanity check */
	if (ll->hcill_state != HCILL_ASLEEP_TO_AWAKE)
		FUNC1("received HCILL_WAKE_UP_ACK in state %ld", ll->hcill_state);

	/* send pending packets and change state to HCILL_AWAKE */
	FUNC2(ll);

	FUNC5(&ll->hcill_lock, flags);

	/* actually send the packets */
	FUNC3(hu);
}