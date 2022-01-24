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
struct mtdblk_dev {int count; int /*<<< orphan*/ * cache_data; struct mtd_info* mtd; scalar_t__ cache_size; int /*<<< orphan*/  cache_state; int /*<<< orphan*/  cache_mutex; } ;
struct mtd_info {int flags; scalar_t__ erasesize; } ;
struct mtd_blktrans_dev {int devnum; struct mtd_info* mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL1 ; 
 int MTD_NO_ERASE ; 
 int /*<<< orphan*/  STATE_EMPTY ; 
 struct mtdblk_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mtdblk_dev** mtdblks ; 
 int /*<<< orphan*/  mtdblks_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mtd_blktrans_dev *mbd)
{
	struct mtdblk_dev *mtdblk;
	struct mtd_info *mtd = mbd->mtd;
	int dev = mbd->devnum;

	FUNC0(MTD_DEBUG_LEVEL1,"mtdblock_open\n");

	FUNC3(&mtdblks_lock);
	if (mtdblks[dev]) {
		mtdblks[dev]->count++;
		FUNC4(&mtdblks_lock);
		return 0;
	}

	/* OK, it's not open. Create cache info for it */
	mtdblk = FUNC1(sizeof(struct mtdblk_dev), GFP_KERNEL);
	if (!mtdblk) {
		FUNC4(&mtdblks_lock);
		return -ENOMEM;
	}

	mtdblk->count = 1;
	mtdblk->mtd = mtd;

	FUNC2(&mtdblk->cache_mutex);
	mtdblk->cache_state = STATE_EMPTY;
	if ( !(mtdblk->mtd->flags & MTD_NO_ERASE) && mtdblk->mtd->erasesize) {
		mtdblk->cache_size = mtdblk->mtd->erasesize;
		mtdblk->cache_data = NULL;
	}

	mtdblks[dev] = mtdblk;
	FUNC4(&mtdblks_lock);

	FUNC0(MTD_DEBUG_LEVEL1, "ok\n");

	return 0;
}