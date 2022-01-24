#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sb_page; } ;
struct bitmap {scalar_t__ events_cleared; int flags; TYPE_3__ storage; TYPE_2__* mddev; } ;
struct TYPE_10__ {void* sectors_reserved; void* chunksize; void* sync_size; void* write_behind; void* daemon_sleep; void* state; void* events_cleared; void* events; } ;
typedef  TYPE_4__ bitmap_super_t ;
struct TYPE_7__ {int daemon_sleep; int max_write_behind; int chunksize; int space; scalar_t__ external; } ;
struct TYPE_8__ {scalar_t__ events; scalar_t__ resync_max_sectors; TYPE_1__ bitmap_info; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  KM_USER0 ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bitmap*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct bitmap *bitmap)
{
	bitmap_super_t *sb;

	if (!bitmap || !bitmap->mddev) /* no bitmap for this array */
		return;
	if (bitmap->mddev->bitmap_info.external)
		return;
	if (!bitmap->storage.sb_page) /* no superblock */
		return;
	sb = FUNC2(bitmap->storage.sb_page, KM_USER0);
	sb->events = FUNC1(bitmap->mddev->events);
	if (bitmap->mddev->events < bitmap->events_cleared)
		/* rocking back to read-only */
		bitmap->events_cleared = bitmap->mddev->events;
	sb->events_cleared = FUNC1(bitmap->events_cleared);
	sb->state = FUNC0(bitmap->flags);
	/* Just in case these have been changed via sysfs: */
	sb->daemon_sleep = FUNC0(bitmap->mddev->bitmap_info.daemon_sleep/HZ);
	sb->write_behind = FUNC0(bitmap->mddev->bitmap_info.max_write_behind);
	/* This might have been changed by a reshape */
	sb->sync_size = FUNC1(bitmap->mddev->resync_max_sectors);
	sb->chunksize = FUNC0(bitmap->mddev->bitmap_info.chunksize);
	sb->sectors_reserved = FUNC0(bitmap->mddev->
					   bitmap_info.space);
	FUNC3(sb, KM_USER0);
	FUNC4(bitmap, bitmap->storage.sb_page, 1);
}