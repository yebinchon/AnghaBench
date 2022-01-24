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
struct mtd_info {scalar_t__ size; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FL_READING ; 
 int FUNC0 (struct mtd_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC3(struct mtd_info *mtd, loff_t ofs)
{
	int ret;

	/* Check for invalid offset */
	if (ofs > mtd->size)
		return -EINVAL;

	FUNC1(mtd, FL_READING);
	ret = FUNC0(mtd, ofs, 0);
	FUNC2(mtd);
	return ret;
}