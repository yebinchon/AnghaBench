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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int eeh_mode; } ;

/* Variables and functions */
 int EEH_MODE_IRQ_DISABLED ; 
 TYPE_1__* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct device_node *dn = FUNC2(dev);

	if ((FUNC0(dn)->eeh_mode) & EEH_MODE_IRQ_DISABLED) {
		FUNC0(dn)->eeh_mode &= ~EEH_MODE_IRQ_DISABLED;
		FUNC1(dev->irq);
	}
}