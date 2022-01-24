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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {void* (* alloc_coherent ) (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 TYPE_1__ dma_direct_ops ; 
 void* FUNC3 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ iommu_fixed_is_weak ; 
 void* FUNC4 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(struct device *dev, size_t size,
				      dma_addr_t *dma_handle, gfp_t flag)
{
	if (iommu_fixed_is_weak)
		return FUNC3(dev, FUNC0(dev),
					    size, dma_handle,
					    FUNC2(dev), flag,
					    FUNC1(dev));
	else
		return dma_direct_ops.alloc_coherent(dev, size, dma_handle,
						     flag);
}