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
struct mmc_blk_data {int usage; scalar_t__ read_only; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int ENXIO ; 
 int EROFS ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 struct mmc_blk_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_blk_data*) ; 

__attribute__((used)) static int FUNC3(struct block_device *bdev, fmode_t mode)
{
	struct mmc_blk_data *md = FUNC1(bdev->bd_disk);
	int ret = -ENXIO;

	if (md) {
		if (md->usage == 2)
			FUNC0(bdev);
		ret = 0;

		if ((mode & FMODE_WRITE) && md->read_only) {
			FUNC2(md);
			ret = -EROFS;
		}
	}

	return ret;
}