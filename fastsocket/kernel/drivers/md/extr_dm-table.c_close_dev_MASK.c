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
struct mapped_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bdev; int /*<<< orphan*/  mode; } ;
struct dm_dev_internal {TYPE_1__ dm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 

__attribute__((used)) static void FUNC3(struct dm_dev_internal *d, struct mapped_device *md)
{
	if (!d->dm_dev.bdev)
		return;

	FUNC0(d->dm_dev.bdev, FUNC2(md));
	FUNC1(d->dm_dev.bdev, d->dm_dev.mode);
	d->dm_dev.bdev = NULL;
}