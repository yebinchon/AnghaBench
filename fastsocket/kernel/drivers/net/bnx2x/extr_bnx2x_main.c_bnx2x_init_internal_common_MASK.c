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
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 scalar_t__ CSTORM_IGU_MODE_OFFSET ; 
 int HC_IGU_BC_MODE ; 
 int HC_IGU_NBC_MODE ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET ; 
 scalar_t__ USTORM_AGG_DATA_OFFSET ; 
 int USTORM_AGG_DATA_SIZE ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	int i;

	if (FUNC3(bp))
		/*
		 * In switch independent mode, the TSTORM needs to accept
		 * packets that failed classification, since approximate match
		 * mac addresses aren't written to NIG LLH
		 */
		FUNC5(bp, BAR_TSTRORM_INTMEM +
			    TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET, 2);
	else if (!FUNC1(bp)) /* 57710 doesn't support MF */
		FUNC5(bp, BAR_TSTRORM_INTMEM +
			    TSTORM_ACCEPT_CLASSIFY_FAILED_OFFSET, 0);

	/* Zero this manually as its initialization is
	   currently missing in the initTool */
	for (i = 0; i < (USTORM_AGG_DATA_SIZE >> 2); i++)
		FUNC4(bp, BAR_USTRORM_INTMEM +
		       USTORM_AGG_DATA_OFFSET + i * 4, 0);
	if (!FUNC2(bp)) {
		FUNC5(bp, BAR_CSTRORM_INTMEM + CSTORM_IGU_MODE_OFFSET,
			FUNC0(bp) ?
			HC_IGU_BC_MODE : HC_IGU_NBC_MODE);
	}
}