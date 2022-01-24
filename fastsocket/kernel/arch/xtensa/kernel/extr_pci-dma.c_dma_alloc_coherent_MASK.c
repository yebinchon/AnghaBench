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
 int /*<<< orphan*/  FUNC0 () ; 
 int GFP_DMA ; 
 unsigned long XCHAL_KSEG_BYPASS_VADDR ; 
 unsigned long XCHAL_KSEG_CACHED_VADDR ; 
 unsigned long XCHAL_KSEG_SIZE ; 
 int __GFP_DMA ; 
 int __GFP_HIGHMEM ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

void *
FUNC6(struct device *dev,size_t size,dma_addr_t *handle,gfp_t flag)
{
	unsigned long ret;
	unsigned long uncached = 0;

	/* ignore region speicifiers */

	flag &= ~(__GFP_DMA | __GFP_HIGHMEM);

	if (dev == NULL || (dev->coherent_dma_mask < 0xffffffff))
		flag |= GFP_DMA;
	ret = (unsigned long)FUNC2(flag, FUNC3(size));

	if (ret == 0)
		return NULL;

	/* We currently don't support coherent memory outside KSEG */

	if (ret < XCHAL_KSEG_CACHED_VADDR
	    || ret >= XCHAL_KSEG_CACHED_VADDR + XCHAL_KSEG_SIZE)
		FUNC0();


	if (ret != 0) {
		FUNC4((void*) ret, 0, size);
		uncached = ret+XCHAL_KSEG_BYPASS_VADDR-XCHAL_KSEG_CACHED_VADDR;
		*handle = FUNC5((void*)ret);
		FUNC1(ret, size);
	}

	return (void*)uncached;
}