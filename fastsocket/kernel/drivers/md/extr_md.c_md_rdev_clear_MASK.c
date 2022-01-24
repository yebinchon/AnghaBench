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
struct TYPE_2__ {int /*<<< orphan*/ * page; } ;
struct md_rdev {TYPE_1__ badblocks; int /*<<< orphan*/ * bb_page; scalar_t__ sectors; scalar_t__ sb_start; int /*<<< orphan*/ * sb_page; scalar_t__ sb_loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct md_rdev *rdev)
{
	if (rdev->sb_page) {
		FUNC1(rdev->sb_page);
		rdev->sb_loaded = 0;
		rdev->sb_page = NULL;
		rdev->sb_start = 0;
		rdev->sectors = 0;
	}
	if (rdev->bb_page) {
		FUNC1(rdev->bb_page);
		rdev->bb_page = NULL;
	}
	FUNC0(rdev->badblocks.page);
	rdev->badblocks.page = NULL;
}