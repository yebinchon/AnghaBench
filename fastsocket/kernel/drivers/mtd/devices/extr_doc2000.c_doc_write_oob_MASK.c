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
struct mtd_oob_ops {scalar_t__ mode; int /*<<< orphan*/  oobbuf; int /*<<< orphan*/  retlen; int /*<<< orphan*/  len; scalar_t__ ooboffs; } ;
struct mtd_info {struct DiskOnChip* priv; } ;
struct DiskOnChip {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MTD_OOB_PLACE ; 
 int FUNC1 (struct mtd_info*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, loff_t ofs,
			 struct mtd_oob_ops *ops)
{
	struct DiskOnChip *this = mtd->priv;
	int ret;

	FUNC0(ops->mode != MTD_OOB_PLACE);

	FUNC2(&this->lock);
	ret = FUNC1(mtd, ofs + ops->ooboffs, ops->len,
				   &ops->retlen, ops->oobbuf);

	FUNC3(&this->lock);
	return ret;
}