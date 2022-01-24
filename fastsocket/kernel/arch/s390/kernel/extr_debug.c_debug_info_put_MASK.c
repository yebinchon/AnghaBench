#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; int /*<<< orphan*/  debugfs_root_entry; int /*<<< orphan*/ * debugfs_entries; int /*<<< orphan*/ * views; int /*<<< orphan*/  ref_count; } ;
typedef  TYPE_1__ debug_info_t ;

/* Variables and functions */
 int DEBUG_MAX_VIEWS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* debug_area_first ; 
 TYPE_1__* debug_area_last ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(debug_info_t *db_info)
{
	int i;

	if (!db_info)
		return;
	if (FUNC0(&db_info->ref_count)) {
		for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
			if (!db_info->views[i])
				continue;
			FUNC2(db_info->debugfs_entries[i]);
		}
		FUNC2(db_info->debugfs_root_entry);
		if(db_info == debug_area_first)
			debug_area_first = db_info->next;
		if(db_info == debug_area_last)
			debug_area_last = db_info->prev;
		if(db_info->prev) db_info->prev->next = db_info->next;
		if(db_info->next) db_info->next->prev = db_info->prev;
		FUNC1(db_info);
	}
}