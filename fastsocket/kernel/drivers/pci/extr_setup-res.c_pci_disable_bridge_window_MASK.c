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
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_MEMORY_BASE ; 
 int /*<<< orphan*/  PCI_PREF_BASE_UPPER32 ; 
 int /*<<< orphan*/  PCI_PREF_LIMIT_UPPER32 ; 
 int /*<<< orphan*/  PCI_PREF_MEMORY_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct pci_dev *dev)
{
	FUNC0(&dev->dev, "disabling bridge mem windows\n");

	/* MMIO Base/Limit */
	FUNC1(dev, PCI_MEMORY_BASE, 0x0000fff0);

	/* Prefetchable MMIO Base/Limit */
	FUNC1(dev, PCI_PREF_LIMIT_UPPER32, 0);
	FUNC1(dev, PCI_PREF_MEMORY_BASE, 0x0000fff0);
	FUNC1(dev, PCI_PREF_BASE_UPPER32, 0xffffffff);
}