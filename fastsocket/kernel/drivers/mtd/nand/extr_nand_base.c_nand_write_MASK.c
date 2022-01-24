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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {size_t len; size_t retlen; int /*<<< orphan*/ * oobbuf; int /*<<< orphan*/ * datbuf; } ;
struct nand_chip {TYPE_1__ ops; } ;
struct mtd_info {scalar_t__ size; struct nand_chip* priv; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FL_WRITING ; 
 int FUNC0 (struct mtd_info*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t to, size_t len,
			  size_t *retlen, const uint8_t *buf)
{
	struct nand_chip *chip = mtd->priv;
	int ret;

	/* Do not allow reads past end of device */
	if ((to + len) > mtd->size)
		return -EINVAL;
	if (!len)
		return 0;

	FUNC1(chip, mtd, FL_WRITING);

	chip->ops.len = len;
	chip->ops.datbuf = (uint8_t *)buf;
	chip->ops.oobbuf = NULL;

	ret = FUNC0(mtd, to, &chip->ops);

	*retlen = chip->ops.retlen;

	FUNC2(mtd);

	return ret;
}