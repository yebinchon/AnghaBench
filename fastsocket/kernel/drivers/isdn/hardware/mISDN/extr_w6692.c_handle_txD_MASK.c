#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int /*<<< orphan*/  timer; int /*<<< orphan*/  Flags; } ;
struct w6692_hw {TYPE_1__ dch; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_BUSY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct w6692_hw *card) {
	if (FUNC4(FLG_BUSY_TIMER, &card->dch.Flags))
		FUNC1(&card->dch.timer);
	if (card->dch.tx_skb && card->dch.tx_idx < card->dch.tx_skb->len) {
		FUNC0(card);
	} else {
		if (card->dch.tx_skb)
			FUNC2(card->dch.tx_skb);
		if (FUNC3(&card->dch))
			FUNC0(card);
	}
}