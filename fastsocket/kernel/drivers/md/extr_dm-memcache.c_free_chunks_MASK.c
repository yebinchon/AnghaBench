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
struct dm_mem_cache_object {struct page_list* pl; } ;
struct dm_mem_cache_client {unsigned int chunks; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_pages; struct page_list* free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_mem_cache_client *cl,
			struct dm_mem_cache_object *obj)
{
	unsigned chunks = cl->chunks;
	unsigned long flags;
	struct page_list *next, *pl;

	FUNC2(flags);
	FUNC0();
	while (chunks--) {
		for (pl = obj[chunks].pl; pl; pl = next) {
			next = pl->next;

			FUNC3(&cl->lock);
			pl->next = cl->free_list;
			cl->free_list = pl;
			cl->free_pages++;
			FUNC4(&cl->lock);
		}
	}

	FUNC1(flags);
}