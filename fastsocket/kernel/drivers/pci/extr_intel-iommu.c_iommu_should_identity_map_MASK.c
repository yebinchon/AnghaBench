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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ coherent_dma_mask; } ;
struct pci_dev {int class; scalar_t__ dma_mask; TYPE_1__ dev; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int IDENTMAP_ALL ; 
 int IDENTMAP_AZALIA ; 
 int IDENTMAP_GFX ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int PCI_CLASS_BRIDGE_PCI ; 
 int PCI_CLASS_SERIAL_USB ; 
 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int iommu_identity_mapping ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, int startup)
{

	/*
	 * We want to prevent any device associated with an RMRR from
	 * getting placed into the SI Domain. This is done because
	 * problems exist when devices are moved in and out of domains
	 * and their respective RMRR info is lost. We exempt USB devices
	 * from this process due to their usage of RMRRs that are known
	 * to not be needed after BIOS hand-off to OS.
	 */
	if (FUNC2(pdev) &&
	    (pdev->class >> 8) != PCI_CLASS_SERIAL_USB)
		return 0;

	if ((iommu_identity_mapping & IDENTMAP_AZALIA) && FUNC0(pdev))
		return 1;

	if ((iommu_identity_mapping & IDENTMAP_GFX) && FUNC1(pdev))
		return 1;

	if (!(iommu_identity_mapping & IDENTMAP_ALL))
		return 0;

	/*
	 * We want to start off with all devices in the 1:1 domain, and
	 * take them out later if we find they can't access all of memory.
	 *
	 * However, we can't do this for PCI devices behind bridges,
	 * because all PCI devices behind the same bridge will end up
	 * with the same source-id on their transactions.
	 *
	 * Practically speaking, we can't change things around for these
	 * devices at run-time, because we can't be sure there'll be no
	 * DMA transactions in flight for any of their siblings.
	 * 
	 * So PCI devices (unless they're on the root bus) as well as
	 * their parent PCI-PCI or PCIe-PCI bridges must be left _out_ of
	 * the 1:1 domain, just in _case_ one of their siblings turns out
	 * not to be able to map all of memory.
	 */
	if (!FUNC4(pdev)) {
		if (!FUNC5(pdev->bus))
			return 0;
		if (pdev->class >> 8 == PCI_CLASS_BRIDGE_PCI)
			return 0;
	} else if (FUNC6(pdev) == PCI_EXP_TYPE_PCI_BRIDGE)
		return 0;

	/* 
	 * At boot time, we don't yet know if devices will be 64-bit capable.
	 * Assume that they will -- if they turn out not to be, then we can 
	 * take them out of the 1:1 domain later.
	 */
	if (!startup) {
		/*
		 * If the device's dma_mask is less than the system's memory
		 * size then this is not a candidate for identity mapping.
		 */
		u64 dma_mask = pdev->dma_mask;

		if (pdev->dev.coherent_dma_mask &&
		    pdev->dev.coherent_dma_mask < dma_mask)
			dma_mask = pdev->dev.coherent_dma_mask;

		return dma_mask >= FUNC3(&pdev->dev);
	}

	return 1;
}