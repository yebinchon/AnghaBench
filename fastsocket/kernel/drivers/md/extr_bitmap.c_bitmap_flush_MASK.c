#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int daemon_sleep; } ;
struct mddev {TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct bitmap {long daemon_lastrun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*) ; 

void FUNC2(struct mddev *mddev)
{
	struct bitmap *bitmap = mddev->bitmap;
	long sleep;

	if (!bitmap) /* there was no bitmap */
		return;

	/* run the daemon_work three time to ensure everything is flushed
	 * that can be
	 */
	sleep = mddev->bitmap_info.daemon_sleep * 2;
	bitmap->daemon_lastrun -= sleep;
	FUNC0(mddev);
	bitmap->daemon_lastrun -= sleep;
	FUNC0(mddev);
	bitmap->daemon_lastrun -= sleep;
	FUNC0(mddev);
	FUNC1(bitmap);
}