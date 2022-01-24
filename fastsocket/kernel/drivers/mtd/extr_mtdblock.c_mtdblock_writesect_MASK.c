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
struct mtdblk_dev {scalar_t__ cache_data; TYPE_1__* mtd; scalar_t__ cache_size; } ;
struct mtd_blktrans_dev {size_t devnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  erasesize; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct mtdblk_dev*,unsigned long,int,char*) ; 
 struct mtdblk_dev** mtdblks ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mtd_blktrans_dev *dev,
			      unsigned long block, char *buf)
{
	struct mtdblk_dev *mtdblk = mtdblks[dev->devnum];
	if (FUNC1(!mtdblk->cache_data && mtdblk->cache_size)) {
		mtdblk->cache_data = FUNC2(mtdblk->mtd->erasesize);
		if (!mtdblk->cache_data)
			return -EINTR;
		/* -EINTR is not really correct, but it is the best match
		 * documented in man 2 write for all cases.  We could also
		 * return -EAGAIN sometimes, but why bother?
		 */
	}
	return FUNC0(mtdblk, block<<9, 512, buf);
}