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
struct TYPE_2__ {int /*<<< orphan*/ * virt; } ;
struct platram_info {TYPE_1__ map; struct platram_info* area; scalar_t__ mtd; struct platram_info* partitions; scalar_t__ free_partitions; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLATRAM_RO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platram_info*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platram_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platram_info*) ; 
 struct platram_info* FUNC9 (struct platform_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct platram_info *info = FUNC9(pdev);

	FUNC6(pdev, NULL);

	FUNC2(&pdev->dev, "removing device\n");

	if (info == NULL)
		return 0;

	if (info->mtd) {
#ifdef CONFIG_MTD_PARTITIONS
		if (info->partitions) {
			del_mtd_partitions(info->mtd);
			if (info->free_partitions)
				kfree(info->partitions);
		}
#endif
		FUNC0(info->mtd);
		FUNC5(info->mtd);
	}

	/* ensure ram is left read-only */

	FUNC7(info, PLATRAM_RO);

	/* release resources */

	if (info->area) {
		FUNC8(info->area);
		FUNC4(info->area);
	}

	if (info->map.virt != NULL)
		FUNC3(info->map.virt);

	FUNC4(info);

	return 0;
}