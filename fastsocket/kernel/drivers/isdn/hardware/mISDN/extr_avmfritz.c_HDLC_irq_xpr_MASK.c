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
struct bchannel {scalar_t__ tx_idx; TYPE_1__* tx_skb; int /*<<< orphan*/  Flags; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct bchannel*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct bchannel*) ; 
 int /*<<< orphan*/  FUNC3 (struct bchannel*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bchannel *bch)
{
	if (bch->tx_skb && bch->tx_idx < bch->tx_skb->len)
		FUNC3(bch);
	else {
		if (bch->tx_skb) {
			/* send confirm, on trans, free on hdlc. */
			if (FUNC4(FLG_TRANSPARENT, &bch->Flags))
				FUNC0(bch);
			FUNC1(bch->tx_skb);
		}
		if (FUNC2(bch))
			FUNC3(bch);
	}
}