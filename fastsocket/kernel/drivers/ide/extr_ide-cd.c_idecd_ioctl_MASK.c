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
struct cdrom_info {int /*<<< orphan*/  devinfo; int /*<<< orphan*/  drive; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
#define  CDROMGETSPINDOWN 129 
#define  CDROMSETSPINDOWN 128 
 int EINVAL ; 
 int /*<<< orphan*/  cdrom_info ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct block_device*,unsigned int,unsigned long) ; 
 struct cdrom_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, fmode_t mode,
			unsigned int cmd, unsigned long arg)
{
	struct cdrom_info *info = FUNC2(bdev->bd_disk, cdrom_info);
	int err;

	switch (cmd) {
	case CDROMSETSPINDOWN:
		return FUNC4(&info->devinfo, arg);
	case CDROMGETSPINDOWN:
		return FUNC3(&info->devinfo, arg);
	default:
		break;
	}

	err = FUNC1(info->drive, bdev, cmd, arg);
	if (err == -EINVAL)
		err = FUNC0(&info->devinfo, bdev, mode, cmd, arg);

	return err;
}