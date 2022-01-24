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
struct mirror_set {int in_sync; scalar_t__ nr_regions; TYPE_2__* ti; int /*<<< orphan*/  rh; } ;
struct dm_region {int dummy; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  table; } ;
struct TYPE_3__ {scalar_t__ (* get_sync_count ) (struct dm_dirty_log*) ;} ;

/* Variables and functions */
 struct dm_dirty_log* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dm_region* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mirror_set*,struct dm_region*) ; 
 scalar_t__ FUNC6 (struct dm_dirty_log*) ; 

__attribute__((used)) static void FUNC7(struct mirror_set *ms)
{
	struct dm_region *reg;
	struct dm_dirty_log *log = FUNC0(ms->rh);
	int r;

	/*
	 * Start quiescing some regions.
	 */
	FUNC2(ms->rh);

	/*
	 * Copy any already quiesced regions.
	 */
	while ((reg = FUNC3(ms->rh))) {
		r = FUNC5(ms, reg);
		if (r)
			FUNC1(reg, 0);
	}

	/*
	 * Update the in sync flag.
	 */
	if (!ms->in_sync &&
	    (log->type->get_sync_count(log) == ms->nr_regions)) {
		/* the sync is complete */
		FUNC4(ms->ti->table);
		ms->in_sync = 1;
	}
}