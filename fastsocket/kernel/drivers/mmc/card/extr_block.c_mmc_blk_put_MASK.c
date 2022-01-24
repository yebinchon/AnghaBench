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
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct mmc_blk_data {scalar_t__ usage; TYPE_2__* disk; TYPE_1__ queue; } ;
struct TYPE_5__ {int first_minor; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MMC_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_use ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_blk_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  open_lock ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(struct mmc_blk_data *md)
{
	FUNC6(&open_lock);
	md->usage--;
	if (md->usage == 0) {
		int devmaj = FUNC0(FUNC4(md->disk));
		int devidx = FUNC1(FUNC4(md->disk)) >> MMC_SHIFT;

		if (!devmaj)
			devidx = md->disk->first_minor >> MMC_SHIFT;

		FUNC3(md->queue.queue);

		FUNC2(devidx, dev_use);

		FUNC8(md->disk);
		FUNC5(md);
	}
	FUNC7(&open_lock);
}