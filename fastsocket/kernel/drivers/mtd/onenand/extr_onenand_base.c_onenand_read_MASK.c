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
typedef  int /*<<< orphan*/  u_char ;
struct onenand_chip {int dummy; } ;
struct mtd_oob_ops {size_t len; size_t retlen; int /*<<< orphan*/ * oobbuf; int /*<<< orphan*/ * datbuf; int /*<<< orphan*/  ooblen; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FL_READING ; 
 scalar_t__ FUNC0 (struct onenand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd, loff_t from, size_t len,
	size_t *retlen, u_char *buf)
{
	struct onenand_chip *this = mtd->priv;
	struct mtd_oob_ops ops = {
		.len	= len,
		.ooblen	= 0,
		.datbuf	= buf,
		.oobbuf	= NULL,
	};
	int ret;

	FUNC1(mtd, FL_READING);
	ret = FUNC0(this) ?
		FUNC2(mtd, from, &ops) :
		FUNC3(mtd, from, &ops);
	FUNC4(mtd);

	*retlen = ops.retlen;
	return ret;
}