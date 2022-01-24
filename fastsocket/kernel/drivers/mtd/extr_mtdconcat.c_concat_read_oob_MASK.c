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
struct mtd_oob_ops {scalar_t__ retlen; scalar_t__ oobretlen; scalar_t__ len; scalar_t__ datbuf; scalar_t__ oobbuf; scalar_t__ ooblen; } ;
struct TYPE_2__ {int /*<<< orphan*/  corrected; int /*<<< orphan*/  failed; } ;
struct mtd_info {scalar_t__ size; int (* read_oob ) (struct mtd_info*,scalar_t__,struct mtd_oob_ops*) ;TYPE_1__ ecc_stats; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct mtd_concat* FUNC0 (struct mtd_info*) ; 
 int EBADMSG ; 
 int EINVAL ; 
 int EUCLEAN ; 
 int FUNC1 (struct mtd_info*,scalar_t__,struct mtd_oob_ops*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
{
	struct mtd_concat *concat = FUNC0(mtd);
	struct mtd_oob_ops devops = *ops;
	int i, err, ret = 0;

	ops->retlen = ops->oobretlen = 0;

	for (i = 0; i < concat->num_subdev; i++) {
		struct mtd_info *subdev = concat->subdev[i];

		if (from >= subdev->size) {
			from -= subdev->size;
			continue;
		}

		/* partial read ? */
		if (from + devops.len > subdev->size)
			devops.len = subdev->size - from;

		err = subdev->read_oob(subdev, from, &devops);
		ops->retlen += devops.retlen;
		ops->oobretlen += devops.oobretlen;

		/* Save information about bitflips! */
		if (FUNC2(err)) {
			if (err == -EBADMSG) {
				mtd->ecc_stats.failed++;
				ret = err;
			} else if (err == -EUCLEAN) {
				mtd->ecc_stats.corrected++;
				/* Do not overwrite -EBADMSG !! */
				if (!ret)
					ret = err;
			} else
				return err;
		}

		if (devops.datbuf) {
			devops.len = ops->len - ops->retlen;
			if (!devops.len)
				return ret;
			devops.datbuf += devops.retlen;
		}
		if (devops.oobbuf) {
			devops.ooblen = ops->ooblen - ops->oobretlen;
			if (!devops.ooblen)
				return ret;
			devops.oobbuf += ops->oobretlen;
		}

		from = 0;
	}
	return -EINVAL;
}