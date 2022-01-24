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
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; int /*<<< orphan*/  lock; struct page_list* free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dm_mem_cache_client *cl,
			 struct dm_mem_cache_object *obj)
{
	unsigned chunks = cl->chunks;
	unsigned long flags;

	FUNC3(flags);
	FUNC1();
	while (chunks--) {
		unsigned p = cl->pages_per_chunk;

		obj[chunks].pl = NULL;

		while (p--) {
			struct page_list *pl;

			/* Take next element from free list */
			FUNC4(&cl->lock);
			pl = cl->free_list;
			FUNC0(!pl);
			cl->free_list = pl->next;
			FUNC5(&cl->lock);

			pl->next = obj[chunks].pl;
			obj[chunks].pl = pl;
		}
	}

	FUNC2(flags);
}