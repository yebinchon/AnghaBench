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
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_coherent ) (struct device*,size_t,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_1__ dma_direct_ops ; 
 scalar_t__ iommu_fixed_is_weak ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, size_t size,
				    void *vaddr, dma_addr_t dma_handle)
{
	if (iommu_fixed_is_weak)
		FUNC1(FUNC0(dev), size, vaddr,
				    dma_handle);
	else
		dma_direct_ops.free_coherent(dev, size, vaddr, dma_handle);
}