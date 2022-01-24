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
struct device {int* coherent_dma_mask; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_DMA ; 
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  gfp ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,size_t,unsigned long) ; 
 unsigned long FUNC5 (size_t) ; 

__attribute__((used)) static void * FUNC6 (struct device *dev, size_t size, dma_addr_t *dma_handle, gfp_t flag)
{
	unsigned long vaddr;
	unsigned long paddr;
	int order;

	order = FUNC3(size);
	size = 1 << (order + PAGE_SHIFT);
	vaddr = FUNC5(size);
	paddr = FUNC0(flag, order);
	FUNC2(paddr, size);
	paddr = FUNC1(paddr);
	FUNC4(vaddr, size, paddr);
	*dma_handle = (dma_addr_t) paddr;

#if 0
/* This probably isn't needed to support EISA cards.
** ISA cards will certainly only support 24-bit DMA addressing.
** Not clear if we can, want, or need to support ISA.
*/
	if (!dev || *dev->coherent_dma_mask < 0xffffffff)
		gfp |= GFP_DMA;
#endif
	return (void *)vaddr;
}