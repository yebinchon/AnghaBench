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
struct pci_dev {int class; } ;
struct TYPE_2__ {int /*<<< orphan*/  piar_lock; } ;

/* Variables and functions */
 int PCI_BASE_CLASS_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 TYPE_1__ pci_io_addr_cache_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct pci_dev *dev)
{
	unsigned long flags;

	/* Ignore PCI bridges */
	if ((dev->class >> 16) == PCI_BASE_CLASS_BRIDGE)
		return;

	FUNC1(&pci_io_addr_cache_root.piar_lock, flags);
	FUNC0(dev);
	FUNC2(&pci_io_addr_cache_root.piar_lock, flags);
}