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
struct TYPE_4__ {struct flash_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {scalar_t__ virt; } ;
struct ixp4xx_flash_info {scalar_t__ res; scalar_t__ partitions; TYPE_1__ map; scalar_t__ mtd; } ;
struct flash_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct ixp4xx_flash_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct flash_platform_data *plat = dev->dev.platform_data;
	struct ixp4xx_flash_info *info = FUNC4(dev);

	FUNC5(dev, NULL);

	if(!info)
		return 0;

	if (info->mtd) {
		FUNC0(info->mtd);
		FUNC3(info->mtd);
	}
	if (info->map.virt)
		FUNC1(info->map.virt);

	FUNC2(info->partitions);

	if (info->res) {
		FUNC6(info->res);
		FUNC2(info->res);
	}

	if (plat->exit)
		plat->exit();

	return 0;
}