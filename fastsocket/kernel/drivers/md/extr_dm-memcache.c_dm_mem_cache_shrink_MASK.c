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
struct page_list {struct page_list* next; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; unsigned int total_pages; unsigned int objects; int /*<<< orphan*/  objs_pool; int /*<<< orphan*/  lock; struct page_list* free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct page_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct dm_mem_cache_client *cl, unsigned objects)
{
	int r;
	unsigned pages = objects * cl->chunks * cl->pages_per_chunk, p = pages;
	unsigned long flags;
	struct page_list *last = NULL, *pl, *pos;

	FUNC0(!pages);

	FUNC3(&cl->lock, flags);
	pl = pos = cl->free_list;
	while (p-- && pos->next) {
		last = pos;
		pos = pos->next;
	}

	if (++p)
		r = -ENOMEM;
	else {
		r = 0;
		cl->free_list = pos;
		cl->free_pages -= pages;
		cl->total_pages -= pages;
		cl->objects -= objects;
		last->next = NULL;
	}
	FUNC4(&cl->lock, flags);

	if (!r) {
		FUNC1(pl);
		FUNC2(cl->objs_pool, cl->objects, GFP_NOIO);
	}

	return r;
}