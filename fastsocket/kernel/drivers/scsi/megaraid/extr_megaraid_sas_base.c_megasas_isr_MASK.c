#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct megasas_irq_context {struct megasas_instance* instance; } ;
struct megasas_instance {int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  fw_reset_no_pci_access; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DID_OK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *devp)
{
	struct megasas_irq_context *irq_context = devp;
	struct megasas_instance *instance = irq_context->instance;
	unsigned long flags;
	irqreturn_t	rc;

	if (FUNC0(&instance->fw_reset_no_pci_access))
		return IRQ_HANDLED;

	FUNC2(&instance->hba_lock, flags);
	rc =  FUNC1(instance, DID_OK);
	FUNC3(&instance->hba_lock, flags);

	return rc;
}