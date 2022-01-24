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
struct mtdblk_dev {int /*<<< orphan*/  cache_data; TYPE_1__* mtd; int /*<<< orphan*/  count; int /*<<< orphan*/  cache_mutex; } ;
struct mtd_blktrans_dev {int devnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL1 ; 
 int /*<<< orphan*/  FUNC1 (struct mtdblk_dev*) ; 
 struct mtdblk_dev** mtdblks ; 
 int /*<<< orphan*/  mtdblks_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtdblk_dev*) ; 

__attribute__((used)) static int FUNC7(struct mtd_blktrans_dev *mbd)
{
	int dev = mbd->devnum;
	struct mtdblk_dev *mtdblk = mtdblks[dev];

   	FUNC0(MTD_DEBUG_LEVEL1, "mtdblock_release\n");

	FUNC2(&mtdblks_lock);

	FUNC2(&mtdblk->cache_mutex);
	FUNC6(mtdblk);
	FUNC3(&mtdblk->cache_mutex);

	if (!--mtdblk->count) {
		/* It was the last usage. Free the device */
		mtdblks[dev] = NULL;
		if (mtdblk->mtd->sync)
			mtdblk->mtd->sync(mtdblk->mtd);
		FUNC5(mtdblk->cache_data);
		FUNC1(mtdblk);
	}

	FUNC3(&mtdblks_lock);

	FUNC0(MTD_DEBUG_LEVEL1, "ok\n");

	return 0;
}