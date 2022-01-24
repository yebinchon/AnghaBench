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
struct gendisk {int dummy; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; void* target_count; int /*<<< orphan*/  event_nr; int /*<<< orphan*/  open_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DM_ACTIVE_PRESENT_FLAG ; 
 int DM_QUERY_INACTIVE_TABLE_FLAG ; 
 int DM_READONLY_FLAG ; 
 int DM_SUSPEND_FLAG ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 struct gendisk* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 struct dm_table* FUNC3 (struct mapped_device*) ; 
 struct dm_table* FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 scalar_t__ FUNC6 (struct mapped_device*) ; 
 int FUNC7 (struct dm_table*) ; 
 void* FUNC8 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_table*) ; 
 scalar_t__ FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mapped_device *md, struct dm_ioctl *param)
{
	struct gendisk *disk = FUNC1(md);
	struct dm_table *table;

	param->flags &= ~(DM_SUSPEND_FLAG | DM_READONLY_FLAG |
			  DM_ACTIVE_PRESENT_FLAG);

	if (FUNC6(md))
		param->flags |= DM_SUSPEND_FLAG;

	param->dev = FUNC11(FUNC0(disk));

	/*
	 * Yes, this will be out of date by the time it gets back
	 * to userland, but it is still very useful for
	 * debugging.
	 */
	param->open_count = FUNC5(md);

	param->event_nr = FUNC2(md);
	param->target_count = 0;

	table = FUNC4(md);
	if (table) {
		if (!(param->flags & DM_QUERY_INACTIVE_TABLE_FLAG)) {
			if (FUNC10(disk))
				param->flags |= DM_READONLY_FLAG;
			param->target_count = FUNC8(table);
		}
		FUNC9(table);

		param->flags |= DM_ACTIVE_PRESENT_FLAG;
	}

	if (param->flags & DM_QUERY_INACTIVE_TABLE_FLAG) {
		table = FUNC3(md);
		if (table) {
			if (!(FUNC7(table) & FMODE_WRITE))
				param->flags |= DM_READONLY_FLAG;
			param->target_count = FUNC8(table);
			FUNC9(table);
		}
	}
}