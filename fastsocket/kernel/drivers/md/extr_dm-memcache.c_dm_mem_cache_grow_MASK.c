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
 struct page_list* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dm_mem_cache_client *cl, unsigned objects)
{
	unsigned pages = objects * cl->chunks * cl->pages_per_chunk;
	struct page_list *pl, *last;

	FUNC0(!pages);
	pl = FUNC1(pages);
	if (!pl)
		return -ENOMEM;

	last = pl;
	while (last->next)
		last = last->next;

	FUNC3(&cl->lock);
	last->next = cl->free_list;
	cl->free_list = pl;
	cl->free_pages += pages;
	cl->total_pages += pages;
	cl->objects += objects;
	FUNC4(&cl->lock);

	FUNC2(cl->objs_pool, cl->objects, GFP_NOIO);
	return 0;
}