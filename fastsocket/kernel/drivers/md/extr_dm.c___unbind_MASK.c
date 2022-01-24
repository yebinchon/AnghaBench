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
struct mapped_device {int /*<<< orphan*/  map_lock; struct dm_table* map; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dm_table *FUNC3(struct mapped_device *md)
{
	struct dm_table *map = md->map;
	unsigned long flags;

	if (!map)
		return NULL;

	FUNC0(map, NULL, NULL);
	FUNC1(&md->map_lock, flags);
	md->map = NULL;
	FUNC2(&md->map_lock, flags);

	return map;
}