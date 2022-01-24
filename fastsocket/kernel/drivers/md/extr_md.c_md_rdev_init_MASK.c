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
struct TYPE_4__ {int shift; int /*<<< orphan*/ * page; int /*<<< orphan*/  lock; scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct md_rdev {int desc_nr; int saved_raid_disk; int raid_disk; TYPE_2__ badblocks; int /*<<< orphan*/  blocked_wait; int /*<<< orphan*/  same_set; int /*<<< orphan*/  corrected_errors; int /*<<< orphan*/  read_errors; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/ * bb_page; scalar_t__ sb_loaded; TYPE_1__ last_read_error; scalar_t__ sb_events; scalar_t__ new_data_offset; scalar_t__ data_offset; scalar_t__ flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct md_rdev *rdev)
{
	rdev->desc_nr = -1;
	rdev->saved_raid_disk = -1;
	rdev->raid_disk = -1;
	rdev->flags = 0;
	rdev->data_offset = 0;
	rdev->new_data_offset = 0;
	rdev->sb_events = 0;
	rdev->last_read_error.tv_sec  = 0;
	rdev->last_read_error.tv_nsec = 0;
	rdev->sb_loaded = 0;
	rdev->bb_page = NULL;
	FUNC1(&rdev->nr_pending, 0);
	FUNC1(&rdev->read_errors, 0);
	FUNC1(&rdev->corrected_errors, 0);

	FUNC0(&rdev->same_set);
	FUNC2(&rdev->blocked_wait);

	/* Add space to store bad block list.
	 * This reserves the space even on arrays where it cannot
	 * be used - I wonder if that matters
	 */
	rdev->badblocks.count = 0;
	rdev->badblocks.shift = -1; /* disabled until explicitly enabled */
	rdev->badblocks.page = FUNC3(PAGE_SIZE, GFP_KERNEL);
	FUNC4(&rdev->badblocks.lock);
	if (rdev->badblocks.page == NULL)
		return -ENOMEM;

	return 0;
}