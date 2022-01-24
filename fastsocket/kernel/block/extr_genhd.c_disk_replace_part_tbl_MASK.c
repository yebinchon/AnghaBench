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
struct gendisk {struct disk_part_tbl* part_tbl; } ;
struct disk_part_tbl {int /*<<< orphan*/  rcu_head; struct disk_part_tbl* last_lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk_free_ptbl_rcu_cb ; 
 int /*<<< orphan*/  FUNC1 (struct disk_part_tbl*,struct disk_part_tbl*) ; 

__attribute__((used)) static void FUNC2(struct gendisk *disk,
				  struct disk_part_tbl *new_ptbl)
{
	struct disk_part_tbl *old_ptbl = disk->part_tbl;

	FUNC1(disk->part_tbl, new_ptbl);

	if (old_ptbl) {
		FUNC1(old_ptbl->last_lookup, NULL);
		FUNC0(&old_ptbl->rcu_head, disk_free_ptbl_rcu_cb);
	}
}