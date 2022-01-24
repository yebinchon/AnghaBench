#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ftimer; int /*<<< orphan*/ * rcvbuf; } ;
struct TYPE_5__ {TYPE_1__ isar; } ;
struct BCState {TYPE_2__ hw; TYPE_3__* cs; int /*<<< orphan*/  Flag; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/  squeue; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  channel; } ;
struct TYPE_6__ {int debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FLG_BUSY ; 
 int /*<<< orphan*/  BC_FLG_INIT ; 
 int L1_DEB_HSCX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct BCState*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct BCState *bcs)
{
	FUNC4(bcs, 0, bcs->channel);
	if (FUNC6(BC_FLG_INIT, &bcs->Flag)) {
		FUNC3(bcs->hw.isar.rcvbuf);
		bcs->hw.isar.rcvbuf = NULL;
		FUNC5(&bcs->rqueue);
		FUNC5(&bcs->squeue);
		if (bcs->tx_skb) {
			FUNC2(bcs->tx_skb);
			bcs->tx_skb = NULL;
			FUNC6(BC_FLG_BUSY, &bcs->Flag);
			if (bcs->cs->debug & L1_DEB_HSCX)
				FUNC0(bcs->cs, "closeisar clear BC_FLG_BUSY");
		}
	}
	FUNC1(&bcs->hw.isar.ftimer);
}