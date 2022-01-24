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
struct agp_memory {int type; size_t page_count; scalar_t__ num_scratch_pages; } ;
struct TYPE_2__ {size_t num_dcache_entries; } ;

/* Variables and functions */
 int AGP_DCACHE_MEMORY ; 
 int AGP_PHYS_MEMORY ; 
 int INTEL_GTT_GEN ; 
 struct agp_memory* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_memory*) ; 
 struct agp_memory* FUNC2 (size_t,int) ; 
 TYPE_1__ intel_private ; 

__attribute__((used)) static struct agp_memory *FUNC3(size_t pg_count,
						       int type)
{
	struct agp_memory *new;

	if (type == AGP_DCACHE_MEMORY && INTEL_GTT_GEN == 1) {
		if (pg_count != intel_private.num_dcache_entries)
			return NULL;

		new = FUNC0(1);
		if (new == NULL)
			return NULL;

		new->type = AGP_DCACHE_MEMORY;
		new->page_count = pg_count;
		new->num_scratch_pages = 0;
		FUNC1(new);
		return new;
	}
	if (type == AGP_PHYS_MEMORY)
		return FUNC2(pg_count, type);
	/* always return NULL for other allocation types for now */
	return NULL;
}