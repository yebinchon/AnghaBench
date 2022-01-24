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
struct md_rdev {TYPE_1__* mddev; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_CHANGE_CLEAN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct md_rdev *rdev, sector_t s, int sectors,
		       int is_new)
{
	int rv;
	if (is_new)
		s += rdev->new_data_offset;
	else
		s += rdev->data_offset;
	rv = FUNC0(&rdev->badblocks,
			      s, sectors, 0);
	if (rv) {
		/* Make sure they get written out promptly */
		FUNC3(rdev->sysfs_state);
		FUNC2(MD_CHANGE_CLEAN, &rdev->mddev->flags);
		FUNC1(rdev->mddev->thread);
	}
	return rv;
}