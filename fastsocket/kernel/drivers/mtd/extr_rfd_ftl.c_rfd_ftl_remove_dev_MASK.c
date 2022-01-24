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
struct TYPE_4__ {TYPE_1__* mtd; } ;
struct partition {int total_blocks; struct partition* blocks; struct partition* header_cache; int /*<<< orphan*/  sector_map; int /*<<< orphan*/  erases; TYPE_2__ mbd; } ;
struct mtd_blktrans_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_blktrans_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct partition*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtd_blktrans_dev *dev)
{
	struct partition *part = (struct partition*)dev;
	int i;

	for (i=0; i<part->total_blocks; i++) {
		FUNC2("rfd_ftl_remove_dev:'%s': erase unit #%02d: %d erases\n",
			part->mbd.mtd->name, i, part->blocks[i].erases);
	}

	FUNC0(dev);
	FUNC3(part->sector_map);
	FUNC1(part->header_cache);
	FUNC1(part->blocks);
	FUNC1(part);
}