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
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ref_point_counter; scalar_t__ start; } ;
struct cfi_private {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FL_POINT ; 
 scalar_t__ FL_READY ; 
 int FUNC1 (struct map_info*,struct flchip*,unsigned long,scalar_t__) ; 
 int FUNC2 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (struct map_info *map, struct flchip *chip, loff_t adr, size_t len)
{
	unsigned long cmd_addr;
	struct cfi_private *cfi = map->fldrv_priv;
	int ret = 0;

	adr += chip->start;

	/* Ensure cmd read/writes are aligned. */
	cmd_addr = adr & ~(FUNC2(map)-1);

	FUNC4(chip->mutex);

	ret = FUNC1(map, chip, cmd_addr, FL_POINT);

	if (!ret) {
		if (chip->state != FL_POINT && chip->state != FL_READY)
			FUNC3(map, FUNC0(0xff), cmd_addr);

		chip->state = FL_POINT;
		chip->ref_point_counter++;
	}
	FUNC5(chip->mutex);

	return ret;
}