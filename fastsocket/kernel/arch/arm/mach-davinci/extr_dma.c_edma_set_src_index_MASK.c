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
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_2__ {unsigned int num_slots; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PARM_SRC_DST_BIDX ; 
 int /*<<< orphan*/  PARM_SRC_DST_CIDX ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 

void FUNC3(unsigned slot, s16 src_bidx, s16 src_cidx)
{
	unsigned ctlr;

	ctlr = FUNC1(slot);
	slot = FUNC0(slot);

	if (slot < edma_info[ctlr]->num_slots) {
		FUNC2(ctlr, PARM_SRC_DST_BIDX, slot,
				0xffff0000, src_bidx);
		FUNC2(ctlr, PARM_SRC_DST_CIDX, slot,
				0xffff0000, src_cidx);
	}
}