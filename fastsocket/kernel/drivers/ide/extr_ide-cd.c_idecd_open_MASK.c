#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cdrom_info {int /*<<< orphan*/  devinfo; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ) ; 
 struct cdrom_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdrom_info*) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, fmode_t mode)
{
	struct cdrom_info *info = FUNC1(bdev->bd_disk);
	int rc = -ENOMEM;

	if (!info)
		return -ENXIO;

	rc = FUNC0(&info->devinfo, bdev, mode);

	if (rc < 0)
		FUNC2(info);

	return rc;
}