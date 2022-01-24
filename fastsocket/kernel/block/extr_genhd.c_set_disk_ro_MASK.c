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
struct hd_struct {int policy; } ;
struct TYPE_2__ {int policy; } ;
struct gendisk {TYPE_1__ part0; } ;
struct disk_part_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_PITER_INCL_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_part_iter*,struct gendisk*,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC2 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*,int) ; 

void FUNC4(struct gendisk *disk, int flag)
{
	struct disk_part_iter piter;
	struct hd_struct *part;

	if (disk->part0.policy != flag) {
		FUNC3(disk, flag);
		disk->part0.policy = flag;
	}

	FUNC1(&piter, disk, DISK_PITER_INCL_EMPTY);
	while ((part = FUNC2(&piter)))
		part->policy = flag;
	FUNC0(&piter);
}