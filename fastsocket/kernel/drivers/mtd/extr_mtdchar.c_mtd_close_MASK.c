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
struct mtd_info {int /*<<< orphan*/  (* sync ) (struct mtd_info*) ;} ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL0 ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_file_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct mtd_file_info *mfi = file->private_data;
	struct mtd_info *mtd = mfi->mtd;

	FUNC0(MTD_DEBUG_LEVEL0, "MTD_close\n");

	/* Only sync if opened RW */
	if ((file->f_mode & FMODE_WRITE) && mtd->sync)
		mtd->sync(mtd);

	FUNC2(mtd);
	file->private_data = NULL;
	FUNC1(mfi);

	return 0;
}