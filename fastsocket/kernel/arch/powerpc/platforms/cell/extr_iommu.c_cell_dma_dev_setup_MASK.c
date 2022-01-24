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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  cell_dma_direct_offset ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dma_direct_ops ; 
 int /*<<< orphan*/  dma_iommu_fixed_ops ; 
 int /*<<< orphan*/  dma_iommu_ops ; 
 int /*<<< orphan*/ * FUNC3 (struct device*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	/* Order is important here, these are not mutually exclusive */
	if (FUNC3(dev) == &dma_iommu_fixed_ops)
		FUNC1(dev);
	else if (FUNC4() == &dma_iommu_ops)
		FUNC6(dev, FUNC2(dev));
	else if (FUNC4() == &dma_direct_ops)
		FUNC5(dev, cell_dma_direct_offset);
	else
		FUNC0();
}