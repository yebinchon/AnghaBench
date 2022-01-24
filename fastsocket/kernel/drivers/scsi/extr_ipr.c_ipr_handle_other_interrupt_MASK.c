#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  sense_interrupt_reg32; int /*<<< orphan*/  clr_interrupt_reg32; int /*<<< orphan*/  sense_interrupt_reg; int /*<<< orphan*/  clr_interrupt_reg; int /*<<< orphan*/  set_interrupt_mask_reg; int /*<<< orphan*/  sense_interrupt_mask_reg; int /*<<< orphan*/  sense_interrupt_mask_reg32; } ;
struct ipr_ioa_cfg {int ioa_unit_checked; scalar_t__ sdt_state; TYPE_2__* pdev; TYPE_1__ regs; scalar_t__ clear_isr; TYPE_3__* reset_cmd; scalar_t__ sis64; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ GET_DUMP ; 
 int IPR_PCII_HRRQ_UPDATED ; 
 int IPR_PCII_IOA_TRANS_TO_OPER ; 
 int IPR_PCII_IOA_UNIT_CHECKED ; 
 int IPR_PCII_IPL_STAGE_CHANGE ; 
 int IPR_PCII_NO_HOST_RRQ ; 
 int IPR_PCII_OPER_INTERRUPTS ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ WAIT_FOR_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ ipr_debug ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(struct ipr_ioa_cfg *ioa_cfg,
					      u32 int_reg)
{
	irqreturn_t rc = IRQ_HANDLED;
	u32 int_mask_reg;

	int_mask_reg = FUNC7(ioa_cfg->regs.sense_interrupt_mask_reg32);
	int_reg &= ~int_mask_reg;

	/* Ignore the interrupt if it was not an operational interrupt.
	 * Or, in the case of SIS 64, check for a stage change interrupt.
	 */
	if ((int_reg & IPR_PCII_OPER_INTERRUPTS) == 0) {
		if (ioa_cfg->sis64) {
			int_mask_reg = FUNC7(ioa_cfg->regs.sense_interrupt_mask_reg);
			int_reg = FUNC7(ioa_cfg->regs.sense_interrupt_reg) & ~int_mask_reg;
			if (int_reg & IPR_PCII_IPL_STAGE_CHANGE) {

				/* clear stage change */
				FUNC8(IPR_PCII_IPL_STAGE_CHANGE, ioa_cfg->regs.clr_interrupt_reg);
				int_reg = FUNC7(ioa_cfg->regs.sense_interrupt_reg) & ~int_mask_reg;
				FUNC5(&ioa_cfg->reset_cmd->queue);
				FUNC0(&ioa_cfg->reset_cmd->timer);
				FUNC4(ioa_cfg->reset_cmd);
				return IRQ_HANDLED;
			}
		}

		return IRQ_NONE;
	}

	if (int_reg & IPR_PCII_IOA_TRANS_TO_OPER) {
		/* Mask the interrupt */
		FUNC8(IPR_PCII_IOA_TRANS_TO_OPER, ioa_cfg->regs.set_interrupt_mask_reg);

		/* Clear the interrupt */
		FUNC8(IPR_PCII_IOA_TRANS_TO_OPER, ioa_cfg->regs.clr_interrupt_reg);
		int_reg = FUNC7(ioa_cfg->regs.sense_interrupt_reg);

		FUNC5(&ioa_cfg->reset_cmd->queue);
		FUNC0(&ioa_cfg->reset_cmd->timer);
		FUNC4(ioa_cfg->reset_cmd);
	} else if ((int_reg & IPR_PCII_HRRQ_UPDATED) == int_reg) {
		if (ioa_cfg->clear_isr) {
			if (ipr_debug && FUNC6())
				FUNC1(&ioa_cfg->pdev->dev,
					"Spurious interrupt detected. 0x%08X\n", int_reg);
			FUNC8(IPR_PCII_HRRQ_UPDATED, ioa_cfg->regs.clr_interrupt_reg32);
			int_reg = FUNC7(ioa_cfg->regs.sense_interrupt_reg32);
			return IRQ_NONE;
		}
	} else {
		if (int_reg & IPR_PCII_IOA_UNIT_CHECKED)
			ioa_cfg->ioa_unit_checked = 1;
		else if (int_reg & IPR_PCII_NO_HOST_RRQ)
			FUNC1(&ioa_cfg->pdev->dev,
				"No Host RRQ. 0x%08X\n", int_reg);
		else
			FUNC1(&ioa_cfg->pdev->dev,
				"Permanent IOA failure. 0x%08X\n", int_reg);

		if (WAIT_FOR_DUMP == ioa_cfg->sdt_state)
			ioa_cfg->sdt_state = GET_DUMP;

		FUNC3(ioa_cfg, ~0);
		FUNC2(ioa_cfg, IPR_SHUTDOWN_NONE);
	}

	return rc;
}