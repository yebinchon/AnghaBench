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
struct megasas_irq_context {int /*<<< orphan*/  MSIxIndex; struct megasas_instance* instance; } ;
struct megasas_instance {int /*<<< orphan*/  work_init; int /*<<< orphan*/  reg_set; TYPE_1__* instancet; int /*<<< orphan*/  reset_flags; int /*<<< orphan*/  msix_vectors; scalar_t__ mask_interrupts; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int (* clear_intr ) (int /*<<< orphan*/ ) ;int (* read_fw_status_reg ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MEGASAS_FUSION_IN_RESET ; 
 int MFI_STATE_FAULT ; 
 int MFI_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC7(int irq, void *devp)
{
	struct megasas_irq_context *irq_context = devp;
	struct megasas_instance *instance = irq_context->instance;
	u32 mfiStatus, fw_state;

	if (instance->mask_interrupts)
		return IRQ_NONE;

	if (!instance->msix_vectors) {
		mfiStatus = instance->instancet->clear_intr(instance->reg_set);
		if (!mfiStatus)
			return IRQ_NONE;
	}

	/* If we are resetting, bail */
	if (FUNC6(MEGASAS_FUSION_IN_RESET, &instance->reset_flags)) {
		instance->instancet->clear_intr(instance->reg_set);
		return IRQ_HANDLED;
	}

	if (!FUNC0(instance, irq_context->MSIxIndex)) {
		instance->instancet->clear_intr(instance->reg_set);
		/* If we didn't complete any commands, check for FW fault */
		fw_state = instance->instancet->read_fw_status_reg(
			instance->reg_set) & MFI_STATE_MASK;
		if (fw_state == MFI_STATE_FAULT)
			FUNC1(&instance->work_init);
	}

	return IRQ_HANDLED;
}