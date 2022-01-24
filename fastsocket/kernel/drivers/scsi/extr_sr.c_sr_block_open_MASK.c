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
struct scsi_cd {int /*<<< orphan*/  cdi; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ) ; 
 struct scsi_cd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cd*) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, fmode_t mode)
{
	struct scsi_cd *cd = FUNC1(bdev->bd_disk);
	int ret = -ENXIO;

	if (cd) {
		ret = FUNC0(&cd->cdi, bdev, mode);
		if (ret)
			FUNC2(cd);
	}
	return ret;
}