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
struct mddev {scalar_t__ array_sectors; int external_size; int /*<<< orphan*/  gendisk; TYPE_1__* pers; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ (* size ) (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t E2BIG ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 scalar_t__ FUNC4 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6(struct mddev *mddev, const char *buf, size_t len)
{
	sector_t sectors;

	if (FUNC3(buf, "default", 7) == 0) {
		if (mddev->pers)
			sectors = mddev->pers->size(mddev, 0, 0);
		else
			sectors = mddev->array_sectors;

		mddev->external_size = 0;
	} else {
		if (FUNC2(buf, &sectors) < 0)
			return -EINVAL;
		if (mddev->pers && mddev->pers->size(mddev, 0, 0) < sectors)
			return -E2BIG;

		mddev->external_size = 1;
	}

	mddev->array_sectors = sectors;
	if (mddev->pers) {
		FUNC1(mddev->gendisk, mddev->array_sectors);
		FUNC0(mddev->gendisk);
	}
	return len;
}