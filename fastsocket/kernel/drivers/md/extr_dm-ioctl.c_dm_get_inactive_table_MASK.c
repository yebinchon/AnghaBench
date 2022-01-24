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
struct mapped_device {int dummy; } ;
struct hash_cell {struct dm_table* new_map; struct mapped_device* md; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _hash_lock ; 
 struct hash_cell* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dm_table *FUNC5(struct mapped_device *md)
{
	struct hash_cell *hc;
	struct dm_table *table = NULL;

	FUNC3(&_hash_lock);
	hc = FUNC1(md);
	if (!hc || hc->md != md) {
		FUNC0("device has been removed from the dev hash table.");
		goto out;
	}

	table = hc->new_map;
	if (table)
		FUNC2(table);

out:
	FUNC4(&_hash_lock);

	return table;
}