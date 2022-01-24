#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  sense_interrupt_reg; int /*<<< orphan*/  clr_interrupt_reg32; int /*<<< orphan*/  clr_interrupt_reg; int /*<<< orphan*/  set_interrupt_mask_reg; } ;
struct ipr_ioa_cfg {int hrrq_num; TYPE_2__ regs; scalar_t__ sis64; TYPE_1__* hrrq; } ;
struct TYPE_3__ {int /*<<< orphan*/  _lock; scalar_t__ allow_interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipr_ioa_cfg *ioa_cfg,
					  u32 clr_ints)
{
	volatile u32 int_reg;
	int i;

	/* Stop new interrupts */
	for (i = 0; i < ioa_cfg->hrrq_num; i++) {
		FUNC1(&ioa_cfg->hrrq[i]._lock);
		ioa_cfg->hrrq[i].allow_interrupts = 0;
		FUNC2(&ioa_cfg->hrrq[i]._lock);
	}
	FUNC3();

	/* Set interrupt mask to stop all new interrupts */
	if (ioa_cfg->sis64)
		FUNC5(~0, ioa_cfg->regs.set_interrupt_mask_reg);
	else
		FUNC4(~0, ioa_cfg->regs.set_interrupt_mask_reg);

	/* Clear any pending interrupts */
	if (ioa_cfg->sis64)
		FUNC4(~0, ioa_cfg->regs.clr_interrupt_reg);
	FUNC4(clr_ints, ioa_cfg->regs.clr_interrupt_reg32);
	int_reg = FUNC0(ioa_cfg->regs.sense_interrupt_reg);
}