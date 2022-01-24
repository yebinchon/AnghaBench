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
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__** edma_info ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned from, unsigned to)
{
	unsigned ctlr_from, ctlr_to;

	ctlr_from = FUNC1(from);
	from = FUNC0(from);
	ctlr_to = FUNC1(to);
	to = FUNC0(to);

	if (from >= edma_info[ctlr_from]->num_slots)
		return;
	if (to >= edma_info[ctlr_to]->num_slots)
		return;
	FUNC3(ctlr_from, PARM_LINK_BCNTRLD, from, 0xffff0000,
				FUNC2(to));
}