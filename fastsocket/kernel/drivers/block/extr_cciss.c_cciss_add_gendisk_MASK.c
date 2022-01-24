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
struct TYPE_11__ {TYPE_2__** drv; TYPE_1__* pdev; scalar_t__* gendisk; } ;
typedef  TYPE_3__ ctlr_info_t ;
struct TYPE_10__ {scalar_t__ busy_configuring; int /*<<< orphan*/  LunID; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NWD_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(ctlr_info_t *h, unsigned char lunid[],
	int controller_node)
{
	int drv_index;

	drv_index = FUNC1(h, controller_node);
	if (drv_index == -1)
		return -1;

	/*Check if the gendisk needs to be allocated */
	if (!h->gendisk[drv_index]) {
		h->gendisk[drv_index] =
			FUNC0(1 << NWD_SHIFT);
		if (!h->gendisk[drv_index]) {
			FUNC5(&h->pdev->dev,
				"could not allocate a new disk %d\n",
				drv_index);
			goto err_free_drive_info;
		}
	}
	FUNC6(h->drv[drv_index]->LunID, lunid,
		sizeof(h->drv[drv_index]->LunID));
	if (FUNC2(h, drv_index))
		goto err_free_disk;
	/* Don't need to mark this busy because nobody */
	/* else knows about this disk yet to contend */
	/* for access to it. */
	h->drv[drv_index]->busy_configuring = 0;
	FUNC7();
	return drv_index;

err_free_disk:
	FUNC4(h, drv_index);
err_free_drive_info:
	FUNC3(h, drv_index);
	return -1;
}