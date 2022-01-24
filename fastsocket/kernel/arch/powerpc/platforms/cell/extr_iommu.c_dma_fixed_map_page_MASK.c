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
struct page {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_page ) (struct device*,struct page*,unsigned long,size_t,int,struct dma_attrs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_1__ dma_direct_ops ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct dma_attrs*) ; 
 scalar_t__ iommu_fixed_is_weak ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,struct page*,unsigned long,size_t,int /*<<< orphan*/ ,int,struct dma_attrs*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct page*,unsigned long,size_t,int,struct dma_attrs*) ; 

__attribute__((used)) static dma_addr_t FUNC5(struct device *dev, struct page *page,
				     unsigned long offset, size_t size,
				     enum dma_data_direction direction,
				     struct dma_attrs *attrs)
{
	if (iommu_fixed_is_weak == FUNC2(DMA_ATTR_WEAK_ORDERING, attrs))
		return dma_direct_ops.map_page(dev, page, offset, size,
					       direction, attrs);
	else
		return FUNC3(dev, FUNC0(dev), page,
				      offset, size, FUNC1(dev),
				      direction, attrs);
}