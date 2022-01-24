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
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct mddev {TYPE_2__* thread; TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct bitmap {scalar_t__ sysfs_can_clear; } ;
struct TYPE_4__ {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct mddev *mddev)
{
	struct bitmap *bitmap = mddev->bitmap;

	if (!bitmap) /* there was no bitmap */
		return;

	FUNC1(&mddev->bitmap_info.mutex);
	mddev->bitmap = NULL; /* disconnect from the md device */
	FUNC2(&mddev->bitmap_info.mutex);
	if (mddev->thread)
		mddev->thread->timeout = MAX_SCHEDULE_TIMEOUT;

	if (bitmap->sysfs_can_clear)
		FUNC3(bitmap->sysfs_can_clear);

	FUNC0(bitmap);
}