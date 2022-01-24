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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_bbt_descr {int dummy; } ;
struct mtd_info {int /*<<< orphan*/  writesize; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nand_bbt_descr*) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, struct nand_bbt_descr *bd,
			   loff_t offs, uint8_t *buf, size_t readlen,
			   int scanlen, int len)
{
	int ret, j;

	ret = FUNC1(mtd, buf, offs, readlen);
	if (ret)
		return ret;

	for (j = 0; j < len; j++, buf += scanlen) {
		if (FUNC0(buf, scanlen, mtd->writesize, bd))
			return 1;
	}
	return 0;
}