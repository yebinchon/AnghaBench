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
struct bnx2x {int stats_started; scalar_t__ func_stx; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	if (FUNC0(bp)) {
		if (bp->port.pmf)
			FUNC3(bp);

		else if (bp->func_stx)
			FUNC1(bp);

		FUNC2(bp);
		FUNC4(bp);
	}

	bp->stats_started = true;
}