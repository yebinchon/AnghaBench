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
typedef  scalar_t__ u32 ;
struct bnx2x_eth_stats {int /*<<< orphan*/  brb_truncate_lo; int /*<<< orphan*/  brb_drop_lo; } ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {int /*<<< orphan*/  stats_sema; int /*<<< orphan*/  dev; struct bnx2x_eth_stats eth_stats; int /*<<< orphan*/  stats_pending; TYPE_1__ port; int /*<<< orphan*/  stats_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DMAE_COMP_VAL ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__* FUNC9 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 
 scalar_t__ FUNC11 (struct bnx2x*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct bnx2x*) ; 
 scalar_t__* stats_comp ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct bnx2x *bp)
{
	u32 *stats_comp = FUNC9(bp, stats_comp);

	/* we run update from timer context, so give up
	 * if somebody is in the middle of transition
	 */
	if (FUNC12(&bp->stats_sema))
		return;

	if (FUNC4(bp) || !bp->stats_started)
		goto out;

	if (FUNC1(bp)) {
		if (*stats_comp != DMAE_COMP_VAL)
			goto out;

		if (bp->port.pmf)
			FUNC6(bp);

		if (FUNC11(bp)) {
			if (bp->stats_pending++ == 3) {
				FUNC0("storm stats were not updated for 3 times\n");
				FUNC8();
			}
			goto out;
		}
	} else {
		/* vf doesn't collect HW statistics, and doesn't get completions
		 * perform only update
		 */
		FUNC11(bp);
	}

	FUNC7(bp);
	FUNC3(bp);

	/* vf is done */
	if (FUNC2(bp))
		goto out;

	if (FUNC14(bp)) {
		struct bnx2x_eth_stats *estats = &bp->eth_stats;

		FUNC13(bp->dev, "brb drops %u  brb truncate %u\n",
		       estats->brb_drop_lo, estats->brb_truncate_lo);
	}

	FUNC5(bp);
	FUNC10(bp);

out:
	FUNC15(&bp->stats_sema);
}