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
struct bnx2x {int /*<<< orphan*/  cmng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int CMNG_FNS_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int,int) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct bnx2x *bp)
{
	int cmng_fns = FUNC3(bp);

	if (cmng_fns != CMNG_FNS_NONE) {
		FUNC2(bp, false, cmng_fns);
		FUNC4(bp, &bp->cmng, FUNC0(bp));
	} else {
		/* rate shaping and fairness are disabled */
		FUNC1(NETIF_MSG_IFUP,
		   "single function mode without fairness\n");
	}
}