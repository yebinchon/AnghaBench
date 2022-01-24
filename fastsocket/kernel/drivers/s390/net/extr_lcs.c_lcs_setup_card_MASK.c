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
struct lcs_card {int /*<<< orphan*/  lancmd_waiters; int /*<<< orphan*/  ipm_list; int /*<<< orphan*/  mask_lock; int /*<<< orphan*/  ipm_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_q; scalar_t__ tx_emitted; int /*<<< orphan*/ * tx_buffer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct lcs_card**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct lcs_card*) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct lcs_card *card)
{
	FUNC2(2, setup, "initcard");
	FUNC1(2, setup, &card, sizeof(void*));

	FUNC4(card);
	FUNC5(card);
	/* Set cards initial state. */
	card->state = DEV_STATE_DOWN;
	card->tx_buffer = NULL;
	card->tx_emitted = 0;

	FUNC3(&card->wait_q);
	FUNC6(&card->lock);
	FUNC6(&card->ipm_lock);
	FUNC6(&card->mask_lock);
#ifdef CONFIG_IP_MULTICAST
	INIT_LIST_HEAD(&card->ipm_list);
#endif
	FUNC0(&card->lancmd_waiters);
}