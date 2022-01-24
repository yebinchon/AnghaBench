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
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*,struct page*) ; 

dma_addr_t FUNC5(struct device *dev, struct page *page,
	unsigned long offset, size_t size, enum dma_data_direction direction)
{
	FUNC0(direction == DMA_NONE);

	if (!FUNC3(dev)) {
		unsigned long addr;

		addr = (unsigned long) FUNC2(page) + offset;
		FUNC1(addr, size, direction);
	}

	return FUNC4(dev, page) + offset;
}