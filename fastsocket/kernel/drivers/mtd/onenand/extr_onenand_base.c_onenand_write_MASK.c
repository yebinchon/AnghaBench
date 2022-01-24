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
struct mtd_oob_ops {size_t len; size_t retlen; int /*<<< orphan*/ * oobbuf; int /*<<< orphan*/ * datbuf; int /*<<< orphan*/  ooblen; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FL_WRITING ; 
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct mtd_info*,int /*<<< orphan*/ ,struct mtd_oob_ops*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t to, size_t len,
	size_t *retlen, const u_char *buf)
{
	struct mtd_oob_ops ops = {
		.len	= len,
		.ooblen	= 0,
		.datbuf	= (u_char *) buf,
		.oobbuf	= NULL,
	};
	int ret;

	FUNC0(mtd, FL_WRITING);
	ret = FUNC2(mtd, to, &ops);
	FUNC1(mtd);

	*retlen = ops.retlen;
	return ret;
}