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
 int GFP_KERNEL ; 
 unsigned long PAGE_MASK ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,unsigned int) ; 
 scalar_t__ cpu_has_vce ; 
 scalar_t__ empty_zero_page ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,unsigned int) ; 
 struct page* FUNC4 (void*) ; 
 unsigned long zero_page_mask ; 

unsigned long FUNC5(void)
{
	unsigned int order;
	unsigned long size;
	struct page *page;

	if (cpu_has_vce)
		order = 3;
	else
		order = 0;

	empty_zero_page = FUNC1(GFP_KERNEL | __GFP_ZERO, order);
	if (!empty_zero_page)
		FUNC2("Oh boy, that early out of memory?");

	page = FUNC4((void *)empty_zero_page);
	FUNC3(page, order);
	while (page < FUNC4((void *)(empty_zero_page + (PAGE_SIZE << order)))) {
		FUNC0(page);
		page++;
	}

	size = PAGE_SIZE << order;
	zero_page_mask = (size - 1) & PAGE_MASK;

	return 1UL << order;
}