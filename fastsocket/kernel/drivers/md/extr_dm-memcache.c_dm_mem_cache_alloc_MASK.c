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
struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {unsigned int chunks; unsigned int pages_per_chunk; unsigned int free_pages; int /*<<< orphan*/  objs_pool; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dm_mem_cache_object* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct dm_mem_cache_client*,struct dm_mem_cache_object*) ; 
 struct dm_mem_cache_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_mem_cache_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

struct dm_mem_cache_object *FUNC6(struct dm_mem_cache_client *cl)
{
	int r = 0;
	unsigned pages = cl->chunks * cl->pages_per_chunk;
	unsigned long flags;
	struct dm_mem_cache_object *obj;

	obj = FUNC2(cl->objs_pool, GFP_NOIO);
	if (!obj)
		return FUNC0(-ENOMEM);

	FUNC4(&cl->lock, flags);
	if (pages > cl->free_pages)
		r = -ENOMEM;
	else
		cl->free_pages -= pages;
	FUNC5(&cl->lock, flags);

	if (r) {
		FUNC3(obj, cl->objs_pool);
		return FUNC0(r);
	}

	FUNC1(cl, obj);
	return obj;
}