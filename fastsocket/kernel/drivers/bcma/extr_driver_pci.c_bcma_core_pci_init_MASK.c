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
struct bcma_drv_pci {scalar_t__ hostmode; scalar_t__ setup_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_pci*) ; 
 scalar_t__ FUNC2 (struct bcma_drv_pci*) ; 

void FUNC3(struct bcma_drv_pci *pc)
{
	if (pc->setup_done)
		return;

#ifdef CONFIG_BCMA_DRIVER_PCI_HOSTMODE
	pc->hostmode = bcma_core_pci_is_in_hostmode(pc);
	if (pc->hostmode)
		bcma_core_pci_hostmode_init(pc);
#endif /* CONFIG_BCMA_DRIVER_PCI_HOSTMODE */

	if (!pc->hostmode)
		FUNC0(pc);
}