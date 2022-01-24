#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct agp_memory {int type; int page_count; int /*<<< orphan*/ * pages; } ;
typedef  int off_t ;
struct TYPE_9__ {int num_entries; } ;
struct TYPE_8__ {TYPE_2__* dev; int /*<<< orphan*/ * gatt_table; TYPE_1__* driver; void* current_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int (* agp_type_to_mask_type ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 TYPE_5__* FUNC0 (void*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_3__* agp_bridge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct agp_memory*) ; 

__attribute__((used)) static int FUNC8(struct agp_memory *mem, off_t pg_start, int type)
{
	int i, num_entries;
	void *temp;
	u32 *gp;
	int mask_type;

	temp = agp_bridge->current_size;
	num_entries = FUNC0(temp)->num_entries;

	if (type != mem->type)
		return -EINVAL;

	mask_type = agp_bridge->driver->agp_type_to_mask_type(agp_bridge, type);
	if (mask_type != 0) {
		/* We know nothing of memory types */
		return -EINVAL;
	}

	if ((pg_start + mem->page_count) > num_entries)
		return -EINVAL;

	gp = (u32 *) &agp_bridge->gatt_table[pg_start];
	for (i = 0; i < mem->page_count; ++i) {
		if (gp[i]) {
			FUNC2(&agp_bridge->dev->dev,
				 "u3_insert_memory: entry 0x%x occupied (%x)\n",
				 i, gp[i]);
			return -EBUSY;
		}
	}

	for (i = 0; i < mem->page_count; i++) {
		gp[i] = (FUNC5(mem->pages[i]) >> PAGE_SHIFT) | 0x80000000UL;
		FUNC3((unsigned long)FUNC1(FUNC5(mem->pages[i])),
				   (unsigned long)FUNC1(FUNC5(mem->pages[i]))+0x1000);
	}
	FUNC4();
	FUNC7(mem);

	return 0;
}