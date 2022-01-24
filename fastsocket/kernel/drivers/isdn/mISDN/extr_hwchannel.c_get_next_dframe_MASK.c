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
struct dchannel {int /*<<< orphan*/  Flags; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  squeue; scalar_t__ tx_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_TX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct dchannel*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(struct dchannel *dch)
{
	dch->tx_idx = 0;
	dch->tx_skb = FUNC1(&dch->squeue);
	if (dch->tx_skb) {
		FUNC0(dch);
		return 1;
	}
	dch->tx_skb = NULL;
	FUNC2(FLG_TX_BUSY, &dch->Flags);
	return 0;
}