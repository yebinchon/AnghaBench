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
struct pcidev_info {int dummy; } ;
struct TYPE_2__ {unsigned long coherent_dma_mask; } ;
struct pci_dev {TYPE_1__ dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI32_ATE_BAR ; 
 int /*<<< orphan*/  PCI64_ATTR_BAR ; 
 struct pcidev_info* FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pcidev_info*,unsigned long,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct pcidev_info*,unsigned long,int /*<<< orphan*/ ,int) ; 

dma_addr_t
FUNC3(struct pci_dev * hwdev, unsigned long phys_addr,
			 size_t size, int dma_flags)
{
	dma_addr_t dma_handle;
	struct pcidev_info *pcidev_info = FUNC0(hwdev);

	if (hwdev->dev.coherent_dma_mask == ~0UL) {
		dma_handle = FUNC2(pcidev_info, phys_addr,
					    PCI64_ATTR_BAR, dma_flags);
	} else {
		dma_handle = (dma_addr_t) FUNC1(pcidev_info,
						    phys_addr, size,
						    PCI32_ATE_BAR, dma_flags);
	}

	return dma_handle;
}