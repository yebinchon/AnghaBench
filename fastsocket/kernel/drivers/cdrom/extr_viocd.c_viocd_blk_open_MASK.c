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
struct disk_info {int /*<<< orphan*/  viocd_info; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct disk_info* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct block_device *bdev, fmode_t mode)
{
	struct disk_info *di = bdev->bd_disk->private_data;
	return FUNC0(&di->viocd_info, bdev, mode);
}