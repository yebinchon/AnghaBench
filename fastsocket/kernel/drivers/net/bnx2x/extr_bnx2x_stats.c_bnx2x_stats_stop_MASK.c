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
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bnx2x {int stats_started; int /*<<< orphan*/  stats_sema; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp)
{
	int update = 0;

	if (FUNC7(&bp->stats_sema, HZ/10))
		FUNC0("Unable to acquire stats lock\n");

	bp->stats_started = false;

	FUNC5(bp);

	if (bp->port.pmf)
		update = (FUNC2(bp) == 0);

	update |= (FUNC6(bp) == 0);

	if (update) {
		FUNC3(bp);

		if (bp->port.pmf)
			FUNC4(bp);

		FUNC1(bp);
		FUNC5(bp);
	}

	FUNC8(&bp->stats_sema);
}