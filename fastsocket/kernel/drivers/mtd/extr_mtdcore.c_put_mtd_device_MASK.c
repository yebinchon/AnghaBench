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
struct mtd_info {int usecount; int /*<<< orphan*/  owner; int /*<<< orphan*/  (* put_device ) (struct mtd_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtd_table_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 

void FUNC5(struct mtd_info *mtd)
{
	int c;

	FUNC2(&mtd_table_mutex);
	c = --mtd->usecount;
	if (mtd->put_device)
		mtd->put_device(mtd);
	FUNC3(&mtd_table_mutex);
	FUNC0(c < 0);

	FUNC1(mtd->owner);
}