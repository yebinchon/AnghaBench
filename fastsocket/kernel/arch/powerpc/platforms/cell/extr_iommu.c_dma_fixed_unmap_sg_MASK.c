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
struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmap_sg ) (struct device*,struct scatterlist*,int,int,struct dma_attrs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_1__ dma_direct_ops ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct dma_attrs*) ; 
 scalar_t__ iommu_fixed_is_weak ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int,int,struct dma_attrs*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct scatterlist*,int,int,struct dma_attrs*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct scatterlist *sg,
			       int nents, enum dma_data_direction direction,
			       struct dma_attrs *attrs)
{
	if (iommu_fixed_is_weak == FUNC1(DMA_ATTR_WEAK_ORDERING, attrs))
		dma_direct_ops.unmap_sg(dev, sg, nents, direction, attrs);
	else
		FUNC2(FUNC0(dev), sg, nents, direction,
			       attrs);
}