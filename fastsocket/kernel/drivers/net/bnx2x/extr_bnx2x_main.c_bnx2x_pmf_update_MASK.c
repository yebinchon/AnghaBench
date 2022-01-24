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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ int_block; } ;
struct TYPE_4__ {int pmf; } ;
struct bnx2x {TYPE_1__ common; int /*<<< orphan*/  period_task; TYPE_2__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 int FUNC0 (struct bnx2x*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ HC_REG_LEADING_EDGE_0 ; 
 scalar_t__ HC_REG_TRAILING_EDGE_0 ; 
 scalar_t__ IGU_REG_LEADING_EDGE_LATCH ; 
 scalar_t__ IGU_REG_TRAILING_EDGE_LATCH ; 
 scalar_t__ INT_BLOCK_HC ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  STATS_EVENT_PMF ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_wq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp)
{
	int port = FUNC0(bp);
	u32 val;

	bp->port.pmf = 1;
	FUNC3(BNX2X_MSG_MCP, "pmf %d\n", bp->port.pmf);

	/*
	 * We need the mb() to ensure the ordering between the writing to
	 * bp->port.pmf here and reading it from the bnx2x_periodic_task().
	 */
	FUNC8();

	/* queue a periodic task */
	FUNC7(bnx2x_wq, &bp->period_task, 0);

	FUNC5(bp);

	/* enable nig attention */
	val = (0xff0f | (1 << (FUNC1(bp) + 4)));
	if (bp->common.int_block == INT_BLOCK_HC) {
		FUNC4(bp, HC_REG_TRAILING_EDGE_0 + port*8, val);
		FUNC4(bp, HC_REG_LEADING_EDGE_0 + port*8, val);
	} else if (!FUNC2(bp)) {
		FUNC4(bp, IGU_REG_TRAILING_EDGE_LATCH, val);
		FUNC4(bp, IGU_REG_LEADING_EDGE_LATCH, val);
	}

	FUNC6(bp, STATS_EVENT_PMF);
}