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
struct TYPE_3__ {struct flash_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct flash_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;
struct armflash_info {scalar_t__ mtd; int nr_subdev; TYPE_2__* subdev; struct armflash_info* parts; } ;
struct TYPE_4__ {scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct armflash_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct armflash_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct platform_device *dev)
{
	struct armflash_info *info = FUNC4(dev);
	struct flash_platform_data *plat = dev->dev.platform_data;
	int i;

	FUNC5(dev, NULL);

	if (info) {
		if (info->mtd) {
			FUNC1(info->mtd);
#ifdef CONFIG_MTD_CONCAT
			if (info->mtd != info->subdev[0].mtd)
				mtd_concat_destroy(info->mtd);
#endif
		}
		FUNC2(info->parts);

		for (i = info->nr_subdev - 1; i >= 0; i--)
			FUNC0(&info->subdev[i]);

		if (plat && plat->exit)
			plat->exit();

		FUNC2(info);
	}

	return 0;
}