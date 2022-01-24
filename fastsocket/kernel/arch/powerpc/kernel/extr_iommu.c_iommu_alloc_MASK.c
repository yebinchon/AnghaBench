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
struct iommu_table {scalar_t__ it_offset; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;
struct TYPE_2__ {int (* tce_build ) (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,struct dma_attrs*) ;int /*<<< orphan*/  (* tce_flush ) (struct iommu_table*) ;} ;

/* Variables and functions */
 unsigned long DMA_ERROR_CODE ; 
 unsigned long IOMMU_PAGE_MASK ; 
 unsigned long IOMMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_table*,unsigned long,unsigned int) ; 
 unsigned long FUNC1 (struct device*,struct iommu_table*,unsigned int,int /*<<< orphan*/ *,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ ppc_md ; 
 int FUNC3 (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,struct dma_attrs*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_table*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static dma_addr_t FUNC6(struct device *dev, struct iommu_table *tbl,
			      void *page, unsigned int npages,
			      enum dma_data_direction direction,
			      unsigned long mask, unsigned int align_order,
			      struct dma_attrs *attrs)
{
	unsigned long entry;
	dma_addr_t ret = DMA_ERROR_CODE;
	int build_fail;

	entry = FUNC1(dev, tbl, npages, NULL, mask, align_order);

	if (FUNC5(entry == DMA_ERROR_CODE))
		return DMA_ERROR_CODE;

	entry += tbl->it_offset;	/* Offset into real TCE table */
	ret = entry << IOMMU_PAGE_SHIFT;	/* Set the return dma address */

	/* Put the TCEs in the HW table */
	build_fail = ppc_md.tce_build(tbl, entry, npages,
	                              (unsigned long)page & IOMMU_PAGE_MASK,
	                              direction, attrs);

	/* ppc_md.tce_build() only returns non-zero for transient errors.
	 * Clean up the table bitmap in this case and return
	 * DMA_ERROR_CODE. For all other errors the functionality is
	 * not altered.
	 */
	if (FUNC5(build_fail)) {
		FUNC0(tbl, ret, npages);
		return DMA_ERROR_CODE;
	}

	/* Flush/invalidate TLB caches if necessary */
	if (ppc_md.tce_flush)
		ppc_md.tce_flush(tbl);

	/* Make sure updates are seen by hardware */
	FUNC2();

	return ret;
}