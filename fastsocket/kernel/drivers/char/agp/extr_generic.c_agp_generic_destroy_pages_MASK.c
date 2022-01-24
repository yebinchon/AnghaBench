#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct agp_memory {int page_count; struct page** pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_memory_agp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct agp_memory *mem)
{
	int i;
	struct page *page;

	if (!mem)
		return;

#ifdef CONFIG_X86
	set_pages_array_wb(mem->pages, mem->page_count);
#endif

	for (i = 0; i < mem->page_count; i++) {
		page = mem->pages[i];

#ifndef CONFIG_X86
		FUNC4(page);
#endif
		FUNC2(page);
		FUNC0(page);
		FUNC1(&agp_bridge->current_memory_agp);
		mem->pages[i] = NULL;
	}
}