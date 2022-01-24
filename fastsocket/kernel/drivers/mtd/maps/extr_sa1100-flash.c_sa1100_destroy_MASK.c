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
struct sa_info {scalar_t__ mtd; scalar_t__ nr_parts; int num_subdev; TYPE_1__* subdev; struct sa_info* parts; } ;
struct flash_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;
struct TYPE_2__ {scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct sa_info *info, struct flash_platform_data *plat)
{
	int i;

	if (info->mtd) {
		if (info->nr_parts == 0)
			FUNC0(info->mtd);
#ifdef CONFIG_MTD_PARTITIONS
		else
			del_mtd_partitions(info->mtd);
#endif
#ifdef CONFIG_MTD_CONCAT
		if (info->mtd != info->subdev[0].mtd)
			mtd_concat_destroy(info->mtd);
#endif
	}

	FUNC2(info->parts);

	for (i = info->num_subdev - 1; i >= 0; i--)
		FUNC4(&info->subdev[i]);
	FUNC2(info);

	if (plat->exit)
		plat->exit();
}