#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int /*<<< orphan*/  Flags; } ;
struct tiger_ch {TYPE_1__ bch; } ;
struct TYPE_5__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct tiger_ch*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct tiger_ch *bc)
{
	if (bc->bch.tx_skb && bc->bch.tx_idx < bc->bch.tx_skb->len)
		FUNC2(bc);
	else {
		if (bc->bch.tx_skb) {
			/* send confirm, on trans, free on hdlc. */
			if (FUNC4(FLG_TRANSPARENT, &bc->bch.Flags))
				FUNC0(&bc->bch);
			FUNC1(bc->bch.tx_skb);
		}
		if (FUNC3(&bc->bch))
			FUNC2(bc);
		else
			return 0;
	}
	return 1;
}