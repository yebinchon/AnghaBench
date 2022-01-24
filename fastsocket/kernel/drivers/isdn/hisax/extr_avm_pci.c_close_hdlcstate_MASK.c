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
struct TYPE_3__ {int /*<<< orphan*/ * rcvbuf; } ;
struct TYPE_4__ {TYPE_1__ hdlc; } ;
struct BCState {int /*<<< orphan*/  Flag; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  squeue; int /*<<< orphan*/  rqueue; int /*<<< orphan*/ * blog; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct BCState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct BCState *bcs)
{
	FUNC2(bcs, 0, 0);
	if (FUNC4(BC_FLG_INIT, &bcs->Flag)) {
		FUNC1(bcs->hw.hdlc.rcvbuf);
		bcs->hw.hdlc.rcvbuf = NULL;
		FUNC1(bcs->blog);
		bcs->blog = NULL;
		FUNC3(&bcs->rqueue);
		FUNC3(&bcs->squeue);
		if (bcs->tx_skb) {
			FUNC0(bcs->tx_skb);
			bcs->tx_skb = NULL;
			FUNC4(BC_FLG_BUSY, &bcs->Flag);
		}
	}
}