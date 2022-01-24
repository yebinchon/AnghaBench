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
struct hd_struct {int dummy; } ;
struct gendisk {int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {int /*<<< orphan*/ * part; int /*<<< orphan*/  len; int /*<<< orphan*/  last_lookup; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hd_struct*,int /*<<< orphan*/ ) ; 

int FUNC2(struct gendisk *disk, sector_t sector1, sector_t sector2,
		 struct hd_struct **part1, struct hd_struct **part2)
{
	struct disk_part_tbl *ptbl;
	struct hd_struct *part;
	int i = 1;

	*part1 = *part2 = NULL;

	ptbl = FUNC0(disk->part_tbl);
	part = FUNC0(ptbl->last_lookup);

	do {
		if (part) {
			if (FUNC1(part, sector1))
				*part1 = part;
			if (FUNC1(part, sector2))
				*part2 = part;

			if (*part1 && *part2)
				/* we found both partitions */
				return *part1 == *part2;
		}

		part = FUNC0(ptbl->part[i]);
	} while (i++ < ptbl->len);

	/* we did not found at least one partition */
	return *part1 == *part2;
}