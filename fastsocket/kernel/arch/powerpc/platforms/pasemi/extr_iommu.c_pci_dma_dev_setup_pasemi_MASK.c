#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * dma_ops; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct pci_dev {int vendor; int device; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int /*<<< orphan*/  dma_direct_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_table_iobmap ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	FUNC2("pci_dma_dev_setup, dev %p (%s)\n", dev, FUNC1(dev));

#if !defined(CONFIG_PPC_PASEMI_IOMMU_DMA_FORCE)
	/* For non-LPAR environment, don't translate anything for the DMA
	 * engine. The exception to this is if the user has enabled
	 * CONFIG_PPC_PASEMI_IOMMU_DMA_FORCE at build time.
	 */
	if (dev->vendor == 0x1959 && dev->device == 0xa007 &&
	    !FUNC0(FW_FEATURE_LPAR)) {
		dev->dev.archdata.dma_ops = &dma_direct_ops;
		return;
	}
#endif

	FUNC3(&dev->dev, &iommu_table_iobmap);
}