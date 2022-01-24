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
struct TYPE_2__ {scalar_t__ tx_idx; int /*<<< orphan*/  Flags; scalar_t__ tx_skb; int /*<<< orphan*/  timer; } ;
struct isac_hw {TYPE_1__ dch; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_BUSY_TIMER ; 
 int /*<<< orphan*/  FLG_TX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct isac_hw *isac)
{
	if (FUNC4(FLG_BUSY_TIMER, &isac->dch.Flags))
		FUNC0(&isac->dch.timer);
	if (FUNC6(FLG_TX_BUSY, &isac->dch.Flags)) {
		/* Restart frame */
		isac->dch.tx_idx = 0;
		FUNC2(isac);
	} else if (isac->dch.tx_skb) { /* should not happen */
		FUNC3("%s: tx_skb exist but not busy\n", isac->name);
		FUNC5(FLG_TX_BUSY, &isac->dch.Flags);
		isac->dch.tx_idx = 0;
		FUNC2(isac);
	} else {
		FUNC3("%s: ISAC XDU no TX_BUSY\n", isac->name);
		if (FUNC1(&isac->dch))
			FUNC2(isac);
	}
}