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
struct rbtx4939_flash_info {scalar_t__ mtd; int /*<<< orphan*/  parts; scalar_t__ nr_parts; } ;
struct rbtx4939_flash_data {scalar_t__ nr_parts; } ;
struct TYPE_2__ {struct rbtx4939_flash_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct rbtx4939_flash_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct rbtx4939_flash_info *info;

	info = FUNC4(dev);
	if (!info)
		return 0;
	FUNC5(dev, NULL);

	if (info->mtd) {
#ifdef CONFIG_MTD_PARTITIONS
		struct rbtx4939_flash_data *pdata = dev->dev.platform_data;

		if (info->nr_parts) {
			del_mtd_partitions(info->mtd);
			kfree(info->parts);
		} else if (pdata->nr_parts)
			del_mtd_partitions(info->mtd);
		else
			del_mtd_device(info->mtd);
#else
		FUNC0(info->mtd);
#endif
		FUNC3(info->mtd);
	}
	return 0;
}