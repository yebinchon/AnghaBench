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
struct edmacc_param {int dummy; } ;
struct TYPE_2__ {unsigned int num_slots; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  PARM_SIZE ; 
 TYPE_1__** edma_info ; 
 scalar_t__* edmacc_regs_base ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct edmacc_param const*,int /*<<< orphan*/ ) ; 

void FUNC4(unsigned slot, const struct edmacc_param *param)
{
	unsigned ctlr;

	ctlr = FUNC1(slot);
	slot = FUNC0(slot);

	if (slot >= edma_info[ctlr]->num_slots)
		return;
	FUNC3(edmacc_regs_base[ctlr] + FUNC2(slot), param,
			PARM_SIZE);
}