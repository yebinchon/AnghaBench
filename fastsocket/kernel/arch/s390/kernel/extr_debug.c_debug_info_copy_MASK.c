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
struct TYPE_6__ {int pages_per_area; scalar_t__ nr_areas; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** areas; int /*<<< orphan*/  level; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ debug_info_t ;

/* Variables and functions */
 int NO_AREAS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static debug_info_t*
FUNC5(debug_info_t* in, int mode)
{
        int i,j;
        debug_info_t* rc;
        unsigned long flags;

	/* get a consistent copy of the debug areas */
	do {
		rc = FUNC0(in->name, in->pages_per_area,
			in->nr_areas, in->buf_size, in->level, mode);
		FUNC3(&in->lock, flags);
		if(!rc)
			goto out;
		/* has something changed in the meantime ? */
		if((rc->pages_per_area == in->pages_per_area) &&
		   (rc->nr_areas == in->nr_areas)) {
			break;
		}
		FUNC4(&in->lock, flags);
		FUNC1(rc);
	} while (1);

	if (mode == NO_AREAS)
                goto out;

        for(i = 0; i < in->nr_areas; i++){
		for(j = 0; j < in->pages_per_area; j++) {
			FUNC2(rc->areas[i][j], in->areas[i][j],PAGE_SIZE);
		}
        }
out:
        FUNC4(&in->lock, flags);
        return rc;
}