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
struct TYPE_2__ {struct block_device* bdev; int /*<<< orphan*/  mode; } ;
struct dm_dev_internal {TYPE_1__ dm_dev; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*) ; 
 int FUNC3 (struct block_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 struct block_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_dev_internal *d, dev_t dev,
		    struct mapped_device *md)
{
	static char *_claim_ptr = "I belong to device-mapper";
	struct block_device *bdev;

	int r;

	FUNC0(d->dm_dev.bdev);

	bdev = FUNC6(dev, d->dm_dev.mode);
	if (FUNC1(bdev))
		return FUNC2(bdev);
	r = FUNC3(bdev, _claim_ptr, FUNC5(md));
	if (r)
		FUNC4(bdev, d->dm_dev.mode);
	else
		d->dm_dev.bdev = bdev;
	return r;
}