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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t,int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 unsigned long FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct device *dev, dma_addr_t dma_handle,
	size_t size, enum dma_data_direction direction)
{
	FUNC0(direction == DMA_NONE);

	if (FUNC2(dev)) {
		unsigned long addr;

		addr = FUNC3(dev, dma_handle);
		FUNC1(addr, size, direction);
	}
}