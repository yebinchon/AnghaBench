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
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bnx2x {int /*<<< orphan*/  cmng; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  CMNG_FNS_MINMAX ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp)
{
	if (bp->link_vars.link_up) {
		FUNC1(bp, true, CMNG_FNS_MINMAX);
		FUNC2(bp);
	}
	FUNC3(bp, &bp->cmng, FUNC0(bp));
}