#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct agp_memory {size_t page_count; size_t num_scratch_pages; struct page** pages; int /*<<< orphan*/  physical; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {struct page* (* agp_alloc_page ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_PHYS_MEMORY ; 
 TYPE_2__* agp_bridge ; 
 struct agp_memory* FUNC0 (size_t) ; 
 struct page* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static struct agp_memory *FUNC4(size_t pg_count, int type)
{
	struct agp_memory *new;
	struct page *page;

	switch (pg_count) {
	case 1: page = agp_bridge->driver->agp_alloc_page(agp_bridge);
		break;
	case 4:
		/* kludge to get 4 physical pages for ARGB cursor */
		page = FUNC1();
		break;
	default:
		return NULL;
	}

	if (page == NULL)
		return NULL;

	new = FUNC0(pg_count);
	if (new == NULL)
		return NULL;

	new->pages[0] = page;
	if (pg_count == 4) {
		/* kludge to get 4 physical pages for ARGB cursor */
		new->pages[1] = new->pages[0] + 1;
		new->pages[2] = new->pages[1] + 1;
		new->pages[3] = new->pages[2] + 1;
	}
	new->page_count = pg_count;
	new->num_scratch_pages = pg_count;
	new->type = AGP_PHYS_MEMORY;
	new->physical = FUNC2(new->pages[0]);
	return new;
}