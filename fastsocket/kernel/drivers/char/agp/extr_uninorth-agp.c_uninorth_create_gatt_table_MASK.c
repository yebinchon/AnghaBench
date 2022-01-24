#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct agp_bridge_data {int aperture_size_idx; scalar_t__* gatt_table; int /*<<< orphan*/  gatt_bus_addr; int /*<<< orphan*/ * gatt_table_real; void* current_size; TYPE_1__* driver; } ;
struct TYPE_4__ {int size; int page_order; int num_entries; } ;
struct TYPE_3__ {scalar_t__ size_type; int num_aperture_sizes; } ;

/* Variables and functions */
 void* FUNC0 (struct agp_bridge_data*) ; 
 TYPE_2__* FUNC1 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LVL2_APER_SIZE ; 
 int /*<<< orphan*/  PAGE_KERNEL_NCG ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page**) ; 
 struct page** FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__* FUNC10 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct agp_bridge_data *bridge)
{
	char *table;
	char *table_end;
	int size;
	int page_order;
	int num_entries;
	int i;
	void *temp;
	struct page *page;
	struct page **pages;

	/* We can't handle 2 level gatt's */
	if (bridge->driver->size_type == LVL2_APER_SIZE)
		return -EINVAL;

	table = NULL;
	i = bridge->aperture_size_idx;
	temp = bridge->current_size;
	size = page_order = num_entries = 0;

	do {
		size = FUNC1(temp)->size;
		page_order = FUNC1(temp)->page_order;
		num_entries = FUNC1(temp)->num_entries;

		table = (char *) FUNC3(GFP_KERNEL, page_order);

		if (table == NULL) {
			i++;
			bridge->current_size = FUNC0(bridge);
		} else {
			bridge->aperture_size_idx = i;
		}
	} while (!table && (i < bridge->driver->num_aperture_sizes));

	if (table == NULL)
		return -ENOMEM;

	pages = FUNC7((1 << page_order) * sizeof(struct page*), GFP_KERNEL);
	if (pages == NULL)
		goto enomem;

	table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

	for (page = FUNC8(table), i = 0; page <= FUNC8(table_end);
	     page++, i++) {
		FUNC2(page);
		pages[i] = page;
	}

	bridge->gatt_table_real = (u32 *) table;
	/* Need to clear out any dirty data still sitting in caches */
	FUNC4((unsigned long)table,
			   (unsigned long)(table_end + PAGE_SIZE));
	bridge->gatt_table = FUNC10(pages, (1 << page_order), 0, PAGE_KERNEL_NCG);

	if (bridge->gatt_table == NULL)
		goto enomem;

	bridge->gatt_bus_addr = FUNC9(table);

	for (i = 0; i < num_entries; i++)
		bridge->gatt_table[i] = 0;

	return 0;

enomem:
	FUNC6(pages);
	if (table)
		FUNC5((unsigned long)table, page_order);
	return -ENOMEM;
}