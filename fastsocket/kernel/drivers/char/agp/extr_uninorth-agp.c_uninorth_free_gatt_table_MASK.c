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
struct agp_bridge_data {scalar_t__ gatt_table_real; int /*<<< orphan*/  gatt_table; void* current_size; } ;
struct TYPE_2__ {int page_order; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 struct page* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct agp_bridge_data *bridge)
{
	int page_order;
	char *table, *table_end;
	void *temp;
	struct page *page;

	temp = bridge->current_size;
	page_order = FUNC0(temp)->page_order;

	/* Do not worry about freeing memory, because if this is
	 * called, then all agp memory is deallocated and removed
	 * from the table.
	 */

	FUNC4(bridge->gatt_table);
	table = (char *) bridge->gatt_table_real;
	table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

	for (page = FUNC3(table); page <= FUNC3(table_end); page++)
		FUNC1(page);

	FUNC2((unsigned long) bridge->gatt_table_real, page_order);

	return 0;
}