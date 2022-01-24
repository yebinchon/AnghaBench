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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 scalar_t__ BAD_DMA_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u64 FUNC3(struct ib_device *dev, struct page *page,
			    unsigned long offset, size_t size,
			    enum dma_data_direction direction)
{
	u64 addr;

	FUNC0(!FUNC2(direction));

	if (offset + size > PAGE_SIZE) {
		addr = BAD_DMA_ADDRESS;
		goto done;
	}

	addr = (u64) FUNC1(page);
	if (addr)
		addr += offset;
	/* TODO: handle highmem pages */

done:
	return addr;
}