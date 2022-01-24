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
struct ll_struct {int /*<<< orphan*/  hcill_state; int /*<<< orphan*/  hcill_lock; int /*<<< orphan*/  tx_wait_q; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCILL_AWAKE ; 
 struct ll_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_uart *hu)
{
	struct ll_struct *ll;

	FUNC0("hu %p", hu);

	ll = FUNC1(sizeof(*ll), GFP_ATOMIC);
	if (!ll)
		return -ENOMEM;

	FUNC2(&ll->txq);
	FUNC2(&ll->tx_wait_q);
	FUNC3(&ll->hcill_lock);

	ll->hcill_state = HCILL_AWAKE;

	hu->priv = ll;

	return 0;
}