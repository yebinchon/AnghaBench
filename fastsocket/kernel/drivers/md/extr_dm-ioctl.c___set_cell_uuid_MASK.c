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
struct hash_cell {char* uuid; int /*<<< orphan*/  uuid_list; } ;

/* Variables and functions */
 scalar_t__ _uuid_buckets ; 
 int /*<<< orphan*/  dm_hash_cells_mutex ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hash_cell *hc, char *new_uuid)
{
	FUNC2(&dm_hash_cells_mutex);
	hc->uuid = new_uuid;
	FUNC3(&dm_hash_cells_mutex);

	FUNC1(&hc->uuid_list, _uuid_buckets + FUNC0(new_uuid));
}