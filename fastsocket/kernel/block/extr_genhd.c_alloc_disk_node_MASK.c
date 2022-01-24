#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int node_id; int minors; int /*<<< orphan*/  async_notify; int /*<<< orphan*/  part0; TYPE_1__* part_tbl; } ;
struct TYPE_5__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * class; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** part; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  block_class ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct gendisk*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  disk_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 
 struct gendisk* FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  media_change_notify_thread ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*) ; 

struct gendisk *FUNC9(int minors, int node_id)
{
	struct gendisk *disk;

	disk = FUNC7(sizeof(struct gendisk),
				GFP_KERNEL | __GFP_ZERO, node_id);
	if (disk) {
		if (!FUNC5(&disk->part0)) {
			FUNC6(disk);
			return NULL;
		}
		disk->node_id = node_id;
		if (FUNC2(disk, 0)) {
			FUNC4(&disk->part0);
			FUNC6(disk);
			return NULL;
		}
		disk->part_tbl->part[0] = &disk->part0;

		disk->minors = minors;
		FUNC8(disk);
		FUNC3(disk)->class = &block_class;
		FUNC3(disk)->type = &disk_type;
		FUNC1(FUNC3(disk));
		FUNC0(&disk->async_notify,
			media_change_notify_thread);
	}
	return disk;
}