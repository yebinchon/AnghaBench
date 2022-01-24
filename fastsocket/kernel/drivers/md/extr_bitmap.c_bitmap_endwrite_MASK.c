#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct bitmap {scalar_t__ events_cleared; int need_sync; TYPE_3__ counts; scalar_t__ allclean; int /*<<< orphan*/  overflow_wait; int /*<<< orphan*/  sysfs_can_clear; TYPE_2__* mddev; int /*<<< orphan*/  behind_writes; int /*<<< orphan*/  behind_wait; } ;
typedef  unsigned long sector_t ;
typedef  int bitmap_counter_t ;
struct TYPE_5__ {int /*<<< orphan*/  max_write_behind; } ;
struct TYPE_6__ {scalar_t__ events; int /*<<< orphan*/  degraded; TYPE_1__ bitmap_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ COUNTER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NEEDED_MASK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (TYPE_3__*,unsigned long,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct bitmap *bitmap, sector_t offset, unsigned long sectors,
		     int success, int behind)
{
	if (!bitmap)
		return;
	if (behind) {
		if (FUNC2(&bitmap->behind_writes))
			FUNC10(&bitmap->behind_wait);
		FUNC6("dec write-behind count %d/%lu\n",
			 FUNC3(&bitmap->behind_writes),
			 bitmap->mddev->bitmap_info.max_write_behind);
	}

	while (sectors) {
		sector_t blocks;
		unsigned long flags;
		bitmap_counter_t *bmc;

		FUNC7(&bitmap->counts.lock, flags);
		bmc = FUNC4(&bitmap->counts, offset, &blocks, 0);
		if (!bmc) {
			FUNC8(&bitmap->counts.lock, flags);
			return;
		}

		if (success && !bitmap->mddev->degraded &&
		    bitmap->events_cleared < bitmap->mddev->events) {
			bitmap->events_cleared = bitmap->mddev->events;
			bitmap->need_sync = 1;
			FUNC9(bitmap->sysfs_can_clear);
		}

		if (!success && !FUNC1(*bmc))
			*bmc |= NEEDED_MASK;

		if (FUNC0(*bmc) == COUNTER_MAX)
			FUNC10(&bitmap->overflow_wait);

		(*bmc)--;
		if (*bmc <= 2) {
			FUNC5(&bitmap->counts, offset);
			bitmap->allclean = 0;
		}
		FUNC8(&bitmap->counts.lock, flags);
		offset += blocks;
		if (sectors > blocks)
			sectors -= blocks;
		else
			sectors = 0;
	}
}