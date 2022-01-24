#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nr_areas; int pages_per_area; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_pages; int /*<<< orphan*/  active_entries; scalar_t__ active_area; int /*<<< orphan*/ *** areas; } ;
typedef  TYPE_1__ debug_info_t ;
typedef  int /*<<< orphan*/  debug_entry_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/ *** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(debug_info_t* id, int nr_areas, int pages_per_area)
{
	unsigned long flags;
	debug_entry_t *** new_areas;
	int rc=0;

	if(!id || (nr_areas <= 0) || (pages_per_area < 0))
		return -EINVAL;
	if(pages_per_area > 0){
		new_areas = FUNC0(pages_per_area, nr_areas);
		if(!new_areas) {
			FUNC3("Allocating memory for %i pages failed\n",
				pages_per_area);
			rc = -ENOMEM;
			goto out;
		}
	} else {
		new_areas = NULL;
	}
	FUNC4(&id->lock,flags);
	FUNC1(id);
	id->areas = new_areas;
	id->nr_areas = nr_areas;
	id->pages_per_area = pages_per_area;
	id->active_area = 0;
	FUNC2(id->active_entries,0,sizeof(int)*id->nr_areas);
	FUNC2(id->active_pages, 0, sizeof(int)*id->nr_areas);
	FUNC5(&id->lock,flags);
	FUNC3("%s: set new size (%i pages)\n" ,id->name, pages_per_area);
out:
	return rc;
}