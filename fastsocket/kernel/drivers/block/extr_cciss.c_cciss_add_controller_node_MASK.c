#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int dummy; } ;
struct TYPE_11__ {TYPE_2__* pdev; struct gendisk** gendisk; TYPE_1__** drv; } ;
typedef  TYPE_3__ ctlr_info_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int block_size; int raid_level; int /*<<< orphan*/  serial_no; scalar_t__ cylinders; scalar_t__ sectors; scalar_t__ heads; scalar_t__ nr_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLR_LUNID ; 
 scalar_t__ FUNC0 (TYPE_3__*,struct gendisk*,int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(ctlr_info_t *h)
{
	struct gendisk *disk;
	int drv_index;

	if (h->gendisk[0] != NULL) /* already did this? Then bail. */
		return;

	drv_index = FUNC1(h, CTLR_LUNID, 1);
	if (drv_index == -1)
		goto error;
	h->drv[drv_index]->block_size = 512;
	h->drv[drv_index]->nr_blocks = 0;
	h->drv[drv_index]->heads = 0;
	h->drv[drv_index]->sectors = 0;
	h->drv[drv_index]->cylinders = 0;
	h->drv[drv_index]->raid_level = -1;
	FUNC5(h->drv[drv_index]->serial_no, 0, 16);
	disk = h->gendisk[drv_index];
	if (FUNC0(h, disk, drv_index) == 0)
		return;
	FUNC3(h, drv_index);
	FUNC2(h, drv_index);
error:
	FUNC4(&h->pdev->dev, "could not add disk 0.\n");
	return;
}