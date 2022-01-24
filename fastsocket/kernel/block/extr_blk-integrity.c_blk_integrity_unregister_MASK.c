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
struct gendisk {struct blk_integrity* integrity; TYPE_2__* queue; } ;
struct blk_integrity {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  capabilities; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_STABLE_WRITES ; 
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct gendisk *disk)
{
	struct blk_integrity *bi;

	if (!disk || !disk->integrity)
		return;

	disk->queue->backing_dev_info.capabilities &= ~BDI_CAP_STABLE_WRITES;

	bi = disk->integrity;

	FUNC2(&bi->kobj, KOBJ_REMOVE);
	FUNC0(&bi->kobj);
	FUNC1(&bi->kobj);
	disk->integrity = NULL;
}