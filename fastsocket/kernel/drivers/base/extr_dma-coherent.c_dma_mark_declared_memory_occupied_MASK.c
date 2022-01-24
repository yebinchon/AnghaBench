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
struct dma_coherent_mem {size_t device_base; void* virt_base; int /*<<< orphan*/  bitmap; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int) ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

void *FUNC3(struct device *dev,
					dma_addr_t device_addr, size_t size)
{
	struct dma_coherent_mem *mem = dev->dma_mem;
	int pos, err;

	size += device_addr & ~PAGE_MASK;

	if (!mem)
		return FUNC0(-EINVAL);

	pos = (device_addr - mem->device_base) >> PAGE_SHIFT;
	err = FUNC1(mem->bitmap, pos, FUNC2(size));
	if (err != 0)
		return FUNC0(err);
	return mem->virt_base + (pos << PAGE_SHIFT);
}