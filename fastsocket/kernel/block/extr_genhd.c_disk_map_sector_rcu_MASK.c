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
struct gendisk {struct hd_struct part0; int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {int len; int /*<<< orphan*/  last_lookup; int /*<<< orphan*/ * part; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hd_struct*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hd_struct*,int /*<<< orphan*/ ) ; 

struct hd_struct *FUNC3(struct gendisk *disk, sector_t sector)
{
	struct disk_part_tbl *ptbl;
	struct hd_struct *part;
	int i;

	ptbl = FUNC1(disk->part_tbl);

	part = FUNC1(ptbl->last_lookup);
	if (part && FUNC2(part, sector))
		return part;

	for (i = 1; i < ptbl->len; i++) {
		part = FUNC1(ptbl->part[i]);

		if (part && FUNC2(part, sector)) {
			FUNC0(ptbl->last_lookup, part);
			return part;
		}
	}
	return &disk->part0;
}