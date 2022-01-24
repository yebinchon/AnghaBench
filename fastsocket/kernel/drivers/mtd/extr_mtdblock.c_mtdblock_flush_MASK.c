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
struct mtdblk_dev {TYPE_1__* mtd; int /*<<< orphan*/  cache_mutex; } ;
struct mtd_blktrans_dev {size_t devnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) (TYPE_1__*) ;} ;

/* Variables and functions */
 struct mtdblk_dev** mtdblks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtdblk_dev*) ; 

__attribute__((used)) static int FUNC4(struct mtd_blktrans_dev *dev)
{
	struct mtdblk_dev *mtdblk = mtdblks[dev->devnum];

	FUNC0(&mtdblk->cache_mutex);
	FUNC3(mtdblk);
	FUNC1(&mtdblk->cache_mutex);

	if (mtdblk->mtd->sync)
		mtdblk->mtd->sync(mtdblk->mtd);
	return 0;
}