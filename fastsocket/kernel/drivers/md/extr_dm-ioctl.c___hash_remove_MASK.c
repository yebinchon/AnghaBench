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
struct hash_cell {int /*<<< orphan*/  md; scalar_t__ new_map; int /*<<< orphan*/  name_list; int /*<<< orphan*/  uuid_list; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 struct dm_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_hash_cells_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct hash_cell*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hash_cell *hc)
{
	struct dm_table *table;

	/* remove from the dev hash */
	FUNC7(&hc->uuid_list);
	FUNC7(&hc->name_list);
	FUNC8(&dm_hash_cells_mutex);
	FUNC2(hc->md, NULL);
	FUNC9(&dm_hash_cells_mutex);

	table = FUNC0(hc->md);
	if (table) {
		FUNC4(table);
		FUNC5(table);
	}

	if (hc->new_map)
		FUNC3(hc->new_map);
	FUNC1(hc->md);
	FUNC6(hc);
}