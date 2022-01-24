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
typedef  int u32 ;
struct controller {int num_slots; int /*<<< orphan*/  mmio_size; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  creg; TYPE_1__* pci_dev; int /*<<< orphan*/  poll_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ARBITER_SERR_MASK ; 
 int BUTTON_PRESS_INTR_MASK ; 
 int COMMAND_INTR_MASK ; 
 int CON_PFAULT_INTR_MASK ; 
 int CON_PFAULT_SERR_MASK ; 
 int GLOBAL_INTR_MASK ; 
 int GLOBAL_SERR_MASK ; 
 int ISO_PFAULT_INTR_MASK ; 
 int MRL_CHANGE_INTR_MASK ; 
 int MRL_CHANGE_SERR_MASK ; 
 int PRSNT_CHANGE_INTR_MASK ; 
 int /*<<< orphan*/  SERR_INTR_ENABLE ; 
 int SERR_INTR_RSVDZ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLOT_REG_RSVDZ_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct controller*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct controller*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  shpchp_num_controllers ; 
 scalar_t__ shpchp_poll_mode ; 
 int /*<<< orphan*/  shpchp_wq ; 

__attribute__((used)) static void FUNC11(struct controller *ctrl)
{
	int i;
	u32 slot_reg, serr_int;

	/*
	 * Mask event interrupts and SERRs of all slots
	 */
	for (i = 0; i < ctrl->num_slots; i++) {
		slot_reg = FUNC9(ctrl, FUNC0(i));
		slot_reg |= (PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
			     BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
			     CON_PFAULT_INTR_MASK   | MRL_CHANGE_SERR_MASK |
			     CON_PFAULT_SERR_MASK);
		slot_reg &= ~SLOT_REG_RSVDZ_MASK;
		FUNC10(ctrl, FUNC0(i), slot_reg);
	}

	FUNC2(ctrl);

	/*
	 * Mask SERR and System Interrupt generation
	 */
	serr_int = FUNC9(ctrl, SERR_INTR_ENABLE);
	serr_int |= (GLOBAL_INTR_MASK  | GLOBAL_SERR_MASK |
		     COMMAND_INTR_MASK | ARBITER_SERR_MASK);
	serr_int &= ~SERR_INTR_RSVDZ_MASK;
	FUNC10(ctrl, SERR_INTR_ENABLE, serr_int);

	if (shpchp_poll_mode)
		FUNC3(&ctrl->poll_timer);
	else {
		FUNC5(ctrl->pci_dev->irq, ctrl);
		FUNC7(ctrl->pci_dev);
	}

	FUNC6(ctrl->creg);
	FUNC8(ctrl->mmio_base, ctrl->mmio_size);

	/*
	 * If this is the last controller to be released, destroy the
	 * shpchpd work queue
	 */
	if (FUNC1(&shpchp_num_controllers))
		FUNC4(shpchp_wq);
}