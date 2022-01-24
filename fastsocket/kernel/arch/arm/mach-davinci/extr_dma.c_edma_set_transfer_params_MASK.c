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
typedef  int u16 ;
typedef  enum sync_dimension { ____Placeholder_sync_dimension } sync_dimension ;
struct TYPE_2__ {unsigned int num_slots; } ;

/* Variables and functions */
 int ASYNC ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PARM_A_B_CNT ; 
 int /*<<< orphan*/  PARM_CCNT ; 
 int /*<<< orphan*/  PARM_LINK_BCNTRLD ; 
 int /*<<< orphan*/  PARM_OPT ; 
 int /*<<< orphan*/  SYNCDIM ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 

void FUNC6(unsigned slot,
		u16 acnt, u16 bcnt, u16 ccnt,
		u16 bcnt_rld, enum sync_dimension sync_mode)
{
	unsigned ctlr;

	ctlr = FUNC1(slot);
	slot = FUNC0(slot);

	if (slot < edma_info[ctlr]->num_slots) {
		FUNC3(ctlr, PARM_LINK_BCNTRLD, slot,
				0x0000ffff, bcnt_rld << 16);
		if (sync_mode == ASYNC)
			FUNC2(ctlr, PARM_OPT, slot, ~SYNCDIM);
		else
			FUNC4(ctlr, PARM_OPT, slot, SYNCDIM);
		/* Set the acount, bcount, ccount registers */
		FUNC5(ctlr, PARM_A_B_CNT, slot, (bcnt << 16) | acnt);
		FUNC5(ctlr, PARM_CCNT, slot, ccnt);
	}
}