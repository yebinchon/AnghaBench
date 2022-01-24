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
typedef  int u32 ;
struct cx88_core {int /*<<< orphan*/  pci_irqmask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PCI_INT_IR_SMPINT ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*) ; 
 int /*<<< orphan*/  cx88_pci_irqs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct cx88_core *core, u32 status)
{
	int handled = 0;

	if (status & PCI_INT_IR_SMPINT) {
		FUNC1(core);
		handled++;
	}
	if (!handled)
		FUNC2(core->name, "irq pci",
				   cx88_pci_irqs, FUNC0(cx88_pci_irqs),
				   status, core->pci_irqmask);
	return handled;
}