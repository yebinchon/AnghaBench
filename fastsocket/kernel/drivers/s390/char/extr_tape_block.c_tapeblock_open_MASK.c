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
struct tape_device {TYPE_1__* cdev; scalar_t__ required_tapemarks; } ;
struct gendisk {int /*<<< orphan*/  private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EPERM ; 
 int /*<<< orphan*/  TS_BLKUSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct tape_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct gendisk*) ; 

__attribute__((used)) static int
FUNC9(struct block_device *bdev, fmode_t mode)
{
	struct gendisk *	disk = bdev->bd_disk;
	struct tape_device *	device;
	int			rc;

	device = FUNC3(disk->private_data);

	if (device->required_tapemarks) {
		FUNC0(2, "TBLOCK: missing tapemarks\n");
		FUNC2("%s: Opening the tape failed because of missing "
			   "end-of-file marks\n", FUNC1(&device->cdev->dev));
		rc = -EPERM;
		goto put_device;
	}

	rc = FUNC4(device);
	if (rc)
		goto put_device;

	rc = FUNC8(disk);
	if (rc)
		goto release;

	/*
	 * Note: The reference to <device> is hold until the release function
	 *       is called.
	 */
	FUNC7(device, TS_BLKUSE);
	return 0;

release:
	FUNC6(device);
 put_device:
	FUNC5(device);
	return rc;
}