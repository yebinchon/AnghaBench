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
struct md_rdev {scalar_t__ raid_disk; unsigned long long recovery_offset; int /*<<< orphan*/  flags; TYPE_1__* mddev; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ pers; } ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  In_sync ; 
 unsigned long long MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct md_rdev *rdev, const char *buf, size_t len)
{
	unsigned long long recovery_start;

	if (FUNC1(buf, "none"))
		recovery_start = MaxSector;
	else if (FUNC2(buf, 10, &recovery_start))
		return -EINVAL;

	if (rdev->mddev->pers &&
	    rdev->raid_disk >= 0)
		return -EBUSY;

	rdev->recovery_offset = recovery_start;
	if (recovery_start == MaxSector)
		FUNC3(In_sync, &rdev->flags);
	else
		FUNC0(In_sync, &rdev->flags);
	return len;
}