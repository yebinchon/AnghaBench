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
struct TYPE_4__ {scalar_t__ medium_changed; scalar_t__ block_position; int /*<<< orphan*/  disk; } ;
struct tape_device {int bof; TYPE_2__ blk_data; TYPE_1__* cdev; } ;
struct gendisk {scalar_t__ private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MTBSF ; 
 int /*<<< orphan*/  MTFSFM ; 
 int /*<<< orphan*/  MTTELL ; 
 int TAPEBLOCK_HSEC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct tape_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct gendisk *disk)
{
	struct tape_device *	device;
	unsigned int		nr_of_blks;
	int			rc;

	device = (struct tape_device *) disk->private_data;
	FUNC0(!device);

	if (!device->blk_data.medium_changed)
		return 0;

	rc = FUNC5(device, MTFSFM, 1);
	if (rc)
		return rc;

	rc = FUNC5(device, MTTELL, 1);
	if (rc < 0)
		return rc;

	FUNC3("%s: Determining the size of the recorded area...\n",
		FUNC2(&device->cdev->dev));
	FUNC1(3, "Image file ends at %d\n", rc);
	nr_of_blks = rc;

	/* This will fail for the first file. Catch the error by checking the
	 * position. */
	FUNC5(device, MTBSF, 1);

	rc = FUNC5(device, MTTELL, 1);
	if (rc < 0)
		return rc;

	if (rc > nr_of_blks)
		return -EINVAL;

	FUNC1(3, "Image file starts at %d\n", rc);
	device->bof = rc;
	nr_of_blks -= rc;

	FUNC3("%s: The size of the recorded area is %i blocks\n",
		FUNC2(&device->cdev->dev), nr_of_blks);
	FUNC4(device->blk_data.disk,
		nr_of_blks*(TAPEBLOCK_HSEC_SIZE/512));

	device->blk_data.block_position = 0;
	device->blk_data.medium_changed = 0;
	return 0;
}