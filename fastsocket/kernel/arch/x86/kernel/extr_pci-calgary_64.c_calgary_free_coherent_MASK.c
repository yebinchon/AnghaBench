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
struct iommu_table {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t PAGE_SHIFT ; 
 struct iommu_table* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_table*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct device *dev, size_t size,
				  void *vaddr, dma_addr_t dma_handle)
{
	unsigned int npages;
	struct iommu_table *tbl = FUNC1(dev);

	size = FUNC0(size);
	npages = size >> PAGE_SHIFT;

	FUNC4(tbl, dma_handle, npages);
	FUNC2((unsigned long)vaddr, FUNC3(size));
}