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
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 scalar_t__ P2SEG ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 

void FUNC5(struct device *dev, void *vaddr, size_t size, int direction)
{
	/*
	 * No need to sync an uncached area
	 */
	if (FUNC1(vaddr) == P2SEG)
		return;

	switch (direction) {
	case DMA_FROM_DEVICE:		/* invalidate only */
		FUNC4(vaddr, size);
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		FUNC2(vaddr, size);
		break;
	case DMA_BIDIRECTIONAL:		/* writeback and invalidate */
		FUNC3(vaddr, size);
		break;
	default:
		FUNC0();
	}
}