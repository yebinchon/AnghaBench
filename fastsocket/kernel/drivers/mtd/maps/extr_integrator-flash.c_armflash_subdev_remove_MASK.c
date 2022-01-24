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
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  phys; scalar_t__ virt; } ;
struct armflash_subdev_info {TYPE_1__ map; int /*<<< orphan*/ * name; scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct armflash_subdev_info *subdev)
{
	if (subdev->mtd)
		FUNC2(subdev->mtd);
	if (subdev->map.virt)
		FUNC0(subdev->map.virt);
	FUNC1(subdev->name);
	subdev->name = NULL;
	FUNC3(subdev->map.phys, subdev->map.size);
}