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
struct of_flash {scalar_t__ cmtd; int list_size; TYPE_2__* list; } ;
struct of_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ virt; } ;
struct TYPE_4__ {scalar_t__ mtd; struct of_flash* res; TYPE_1__ map; } ;

/* Variables and functions */
 struct of_flash* FUNC0 (struct of_flash*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct of_flash* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct of_flash*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct of_flash*) ; 

__attribute__((used)) static int FUNC10(struct of_device *dev)
{
	struct of_flash *info;
	int i;

	info = FUNC3(&dev->dev);
	if (!info)
		return 0;
	FUNC4(&dev->dev, NULL);

#ifdef CONFIG_MTD_CONCAT
	if (info->cmtd != info->list[0].mtd) {
		del_mtd_device(info->cmtd);
		mtd_concat_destroy(info->cmtd);
	}
#endif

	if (info->cmtd) {
		if (FUNC0(info)) {
			FUNC2(info->cmtd);
			FUNC6(FUNC0(info));
		} else {
			FUNC1(info->cmtd);
		}
	}

	for (i = 0; i < info->list_size; i++) {
		if (info->list[i].mtd)
			FUNC7(info->list[i].mtd);

		if (info->list[i].map.virt)
			FUNC5(info->list[i].map.virt);

		if (info->list[i].res) {
			FUNC9(info->list[i].res);
			FUNC6(info->list[i].res);
		}
	}

	FUNC6(info);

	return 0;
}