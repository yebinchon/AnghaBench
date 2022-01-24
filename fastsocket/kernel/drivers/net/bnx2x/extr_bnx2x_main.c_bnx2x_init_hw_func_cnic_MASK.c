#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  INITOP_SET ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*) ; 

int FUNC5(struct bnx2x *bp)
{
	int rc;

	FUNC2(bp, INITOP_SET);

	if (FUNC1(bp)) {
		/* Configure searcher as part of function hw init */
		FUNC3(bp);

		/* Reset NIC mode */
		rc = FUNC4(bp);
		if (rc)
			FUNC0("Can't change NIC mode!\n");
		return rc;
	}

	return 0;
}