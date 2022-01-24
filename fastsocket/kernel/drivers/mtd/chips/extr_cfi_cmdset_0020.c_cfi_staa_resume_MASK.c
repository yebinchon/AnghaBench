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
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wq; } ;
struct cfi_private {int numchips; struct flchip* chips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FL_PM_SUSPENDED ; 
 scalar_t__ FL_READY ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd)
{
	struct map_info *map = mtd->priv;
	struct cfi_private *cfi = map->fldrv_priv;
	int i;
	struct flchip *chip;

	for (i=0; i<cfi->numchips; i++) {

		chip = &cfi->chips[i];

		FUNC2(chip->mutex);

		/* Go to known state. Chip may have been power cycled */
		if (chip->state == FL_PM_SUSPENDED) {
			FUNC1(map, FUNC0(0xFF), 0);
			chip->state = FL_READY;
			FUNC4(&chip->wq);
		}

		FUNC3(chip->mutex);
	}
}