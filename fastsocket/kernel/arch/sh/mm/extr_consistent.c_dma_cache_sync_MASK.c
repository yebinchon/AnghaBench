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
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 

void FUNC5(struct device *dev, void *vaddr, size_t size,
		    enum dma_data_direction direction)
{
#ifdef CONFIG_CPU_SH5
	void *p1addr = vaddr;
#else
	void *p1addr = (void*) FUNC1((unsigned long)vaddr);
#endif

	switch (direction) {
	case DMA_FROM_DEVICE:		/* invalidate only */
		FUNC2(p1addr, size);
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		FUNC4(p1addr, size);
		break;
	case DMA_BIDIRECTIONAL:		/* writeback and invalidate */
		FUNC3(p1addr, size);
		break;
	default:
		FUNC0();
	}
}