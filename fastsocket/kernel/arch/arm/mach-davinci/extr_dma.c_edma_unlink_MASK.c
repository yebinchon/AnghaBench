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
struct TYPE_2__ {unsigned int num_slots; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PARM_LINK_BCNTRLD ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 

void FUNC3(unsigned from)
{
	unsigned ctlr;

	ctlr = FUNC1(from);
	from = FUNC0(from);

	if (from >= edma_info[ctlr]->num_slots)
		return;
	FUNC2(ctlr, PARM_LINK_BCNTRLD, from, 0xffff);
}