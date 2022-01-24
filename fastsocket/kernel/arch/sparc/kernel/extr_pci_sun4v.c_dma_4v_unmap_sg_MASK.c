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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {unsigned long dma_address; unsigned int dma_length; } ;
struct pci_pbm_info {int /*<<< orphan*/  devhandle; } ;
struct iommu {unsigned long page_table_map_base; int /*<<< orphan*/  lock; } ;
struct dma_attrs {int dummy; } ;
struct TYPE_2__ {struct pci_pbm_info* host_controller; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long IO_PAGE_SHIFT ; 
 int /*<<< orphan*/  IO_PAGE_SIZE ; 
 unsigned long FUNC2 (unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct scatterlist* FUNC5 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct device *dev, struct scatterlist *sglist,
			    int nelems, enum dma_data_direction direction,
			    struct dma_attrs *attrs)
{
	struct pci_pbm_info *pbm;
	struct scatterlist *sg;
	struct iommu *iommu;
	unsigned long flags;
	u32 devhandle;

	FUNC0(direction == DMA_NONE);

	iommu = dev->archdata.iommu;
	pbm = dev->archdata.host_controller;
	devhandle = pbm->devhandle;
	
	FUNC6(&iommu->lock, flags);

	sg = sglist;
	while (nelems--) {
		dma_addr_t dma_handle = sg->dma_address;
		unsigned int len = sg->dma_length;
		unsigned long npages, entry;

		if (!len)
			break;
		npages = FUNC2(dma_handle, len, IO_PAGE_SIZE);
		FUNC3(iommu, dma_handle, npages);

		entry = ((dma_handle - iommu->page_table_map_base) >> IO_PAGE_SHIFT);
		while (npages) {
			unsigned long num;

			num = FUNC4(devhandle, FUNC1(0, entry),
						    npages);
			entry += num;
			npages -= num;
		}

		sg = FUNC5(sg);
	}

	FUNC7(&iommu->lock, flags);
}