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
struct TYPE_2__ {int num_channels; int num_slots; int /*<<< orphan*/  edma_inuse; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  PARM_SIZE ; 
 int /*<<< orphan*/  dummy_paramset ; 
 TYPE_1__** edma_info ; 
 scalar_t__* edmacc_regs_base ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(unsigned ctlr, int slot)
{
	if (slot >= 0)
		slot = FUNC0(slot);

	if (slot < 0) {
		slot = edma_info[ctlr]->num_channels;
		for (;;) {
			slot = FUNC3(edma_info[ctlr]->edma_inuse,
					edma_info[ctlr]->num_slots, slot);
			if (slot == edma_info[ctlr]->num_slots)
				return -ENOMEM;
			if (!FUNC5(slot,
						edma_info[ctlr]->edma_inuse))
				break;
		}
	} else if (slot < edma_info[ctlr]->num_channels ||
			slot >= edma_info[ctlr]->num_slots) {
		return -EINVAL;
	} else if (FUNC5(slot, edma_info[ctlr]->edma_inuse)) {
		return -EBUSY;
	}

	FUNC4(edmacc_regs_base[ctlr] + FUNC2(slot),
			&dummy_paramset, PARM_SIZE);

	return FUNC1(ctlr, slot);
}