#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  daemon_sleep; int /*<<< orphan*/  mutex; } ;
struct mddev {scalar_t__ resync_max_sectors; scalar_t__ degraded; scalar_t__ events; scalar_t__ recovery_cp; TYPE_3__* thread; TYPE_2__ bitmap_info; struct bitmap* bitmap; } ;
struct bitmap {scalar_t__ events_cleared; int /*<<< orphan*/  flags; TYPE_1__* mddev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_STALE ; 
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 int EIO ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 
 int FUNC1 (struct bitmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct mddev *mddev)
{
	int err = 0;
	sector_t start = 0;
	sector_t sector = 0;
	struct bitmap *bitmap = mddev->bitmap;

	if (!bitmap)
		goto out;

	/* Clear out old bitmap info first:  Either there is none, or we
	 * are resuming after someone else has possibly changed things,
	 * so we should forget old cached info.
	 * All chunks should be clean, but some might need_sync.
	 */
	while (sector < mddev->resync_max_sectors) {
		sector_t blocks;
		FUNC2(bitmap, sector, &blocks, 0);
		sector += blocks;
	}
	FUNC0(bitmap);

	if (mddev->degraded == 0
	    || bitmap->events_cleared == mddev->events)
		/* no need to keep dirty bits to optimise a
		 * re-add of a missing device */
		start = mddev->recovery_cp;

	FUNC6(&mddev->bitmap_info.mutex);
	err = FUNC1(bitmap, start);
	FUNC7(&mddev->bitmap_info.mutex);

	if (err)
		goto out;
	FUNC4(BITMAP_STALE, &bitmap->flags);

	/* Kick recovery in case any bits were set */
	FUNC8(MD_RECOVERY_NEEDED, &bitmap->mddev->recovery);

	mddev->thread->timeout = mddev->bitmap_info.daemon_sleep;
	FUNC5(mddev->thread);

	FUNC3(bitmap);

	if (FUNC9(BITMAP_WRITE_ERROR, &bitmap->flags))
		err = -EIO;
out:
	return err;
}