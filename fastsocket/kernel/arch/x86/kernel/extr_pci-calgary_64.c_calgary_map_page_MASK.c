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
struct page {int dummy; } ;
struct iommu_table {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct iommu_table* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iommu_table*,void*,unsigned int,int) ; 
 unsigned int FUNC2 (unsigned long,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*) ; 

__attribute__((used)) static dma_addr_t FUNC4(struct device *dev, struct page *page,
				   unsigned long offset, size_t size,
				   enum dma_data_direction dir,
				   struct dma_attrs *attrs)
{
	void *vaddr = FUNC3(page) + offset;
	unsigned long uaddr;
	unsigned int npages;
	struct iommu_table *tbl = FUNC0(dev);

	uaddr = (unsigned long)vaddr;
	npages = FUNC2(uaddr, size, PAGE_SIZE);

	return FUNC1(dev, tbl, vaddr, npages, dir);
}