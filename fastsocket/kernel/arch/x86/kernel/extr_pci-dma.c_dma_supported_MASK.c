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
typedef  int u64 ;
struct dma_map_ops {int (* dma_supported ) (struct device*,int) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 scalar_t__ forbid_dac ; 
 struct dma_map_ops* FUNC2 (struct device*) ; 
 scalar_t__ iommu_sac_force ; 
 int FUNC3 (struct device*,int) ; 

int FUNC4(struct device *dev, u64 mask)
{
	struct dma_map_ops *ops = FUNC2(dev);

#ifdef CONFIG_PCI
	if (mask > 0xffffffff && forbid_dac > 0) {
		dev_info(dev, "PCI: Disallowing DAC for device\n");
		return 0;
	}
#endif

	if (ops->dma_supported)
		return ops->dma_supported(dev, mask);

	/* Copied from i386. Doesn't make much sense, because it will
	   only work for pci_alloc_coherent.
	   The caller just has to use GFP_DMA in this case. */
	if (mask < FUNC0(24))
		return 0;

	/* Tell the device to use SAC when IOMMU force is on.  This
	   allows the driver to use cheaper accesses in some cases.

	   Problem with this is that if we overflow the IOMMU area and
	   return DAC as fallback address the device may not handle it
	   correctly.

	   As a special case some controllers have a 39bit address
	   mode that is as efficient as 32bit (aic79xx). Don't force
	   SAC for these.  Assume all masks <= 40 bits are of this
	   type. Normally this doesn't make any difference, but gives
	   more gentle handling of IOMMU overflow. */
	if (iommu_sac_force && (mask >= FUNC0(40))) {
		FUNC1(dev, "Force SAC with mask %Lx\n", mask);
		return 0;
	}

	return 1;
}