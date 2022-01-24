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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long,size_t,int) ; 
 scalar_t__ FUNC2 (struct page*) ; 

void FUNC3(struct page *page, unsigned long offset,
	size_t size, int direction)
{
#ifdef CONFIG_HIGHMEM
	__dma_sync_page_highmem(page, offset, size, direction);
#else
	unsigned long start = (unsigned long)FUNC2(page) + offset;
	FUNC0((void *)start, size, direction);
#endif
}