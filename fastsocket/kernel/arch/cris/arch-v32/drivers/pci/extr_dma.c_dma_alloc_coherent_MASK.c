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
struct device {int coherent_dma_mask; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int GFP_DMA ; 
 int __GFP_DMA ; 
 int __GFP_HIGHMEM ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct device*,size_t,int /*<<< orphan*/ *,void**) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void *FUNC5(struct device *dev, size_t size,
			   dma_addr_t *dma_handle, gfp_t gfp)
{
	void *ret;
	int order = FUNC2(size);
	/* ignore region specifiers */
	gfp &= ~(__GFP_DMA | __GFP_HIGHMEM);

	if (FUNC1(dev, size, dma_handle, &ret))
		return ret;

	if (dev == NULL || (dev->coherent_dma_mask < 0xffffffff))
		gfp |= GFP_DMA;

	ret = (void *)FUNC0(gfp, order);

	if (ret != NULL) {
		FUNC3(ret, 0, size);
		*dma_handle = FUNC4(ret);
	}
	return ret;
}