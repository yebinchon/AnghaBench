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
struct disk_part_tbl {int len; int /*<<< orphan*/ * part; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

struct hd_struct *FUNC7(struct gendisk *disk, int partno)
{
	struct hd_struct *part = NULL;
	struct disk_part_tbl *ptbl;

	if (FUNC6(partno < 0))
		return NULL;

	FUNC4();

	ptbl = FUNC3(disk->part_tbl);
	if (FUNC1(partno < ptbl->len)) {
		part = FUNC3(ptbl->part[partno]);
		if (part)
			FUNC0(FUNC2(part));
	}

	FUNC5();

	return part;
}