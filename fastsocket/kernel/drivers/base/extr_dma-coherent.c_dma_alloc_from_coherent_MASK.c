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
struct dma_coherent_mem {int size; int flags; void* virt_base; scalar_t__ device_base; int /*<<< orphan*/  bitmap; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;
typedef  int ssize_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int DMA_MEMORY_EXCLUSIVE ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct device *dev, ssize_t size,
				       dma_addr_t *dma_handle, void **ret)
{
	struct dma_coherent_mem *mem;
	int order = FUNC1(size);
	int pageno;

	if (!dev)
		return 0;
	mem = dev->dma_mem;
	if (!mem)
		return 0;

	*ret = NULL;

	if (FUNC3(size > (mem->size << PAGE_SHIFT)))
		goto err;

	pageno = FUNC0(mem->bitmap, mem->size, order);
	if (FUNC3(pageno < 0))
		goto err;

	/*
	 * Memory was found in the per-device area.
	 */
	*dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
	*ret = mem->virt_base + (pageno << PAGE_SHIFT);
	FUNC2(*ret, 0, size);

	return 1;

err:
	/*
	 * In the case where the allocation can not be satisfied from the
	 * per-device area, try to fall back to generic memory if the
	 * constraints allow it.
	 */
	return mem->flags & DMA_MEMORY_EXCLUSIVE;
}