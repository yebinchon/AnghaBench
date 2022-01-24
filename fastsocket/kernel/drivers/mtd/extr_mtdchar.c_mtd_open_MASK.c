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
struct mtd_info {scalar_t__ type; int flags; scalar_t__ backing_dev_info; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; TYPE_1__* f_mapping; } ;
struct TYPE_2__ {scalar_t__ backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EACCES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mtd_info*) ; 
 int MAX_MTD_DEVICES ; 
 scalar_t__ MTD_ABSENT ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL0 ; 
 int MTD_WRITEABLE ; 
 int FUNC2 (struct mtd_info*) ; 
 struct mtd_info* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct inode*) ; 
 struct mtd_file_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	int minor = FUNC4(inode);
	int devnum = minor >> 1;
	int ret = 0;
	struct mtd_info *mtd;
	struct mtd_file_info *mfi;

	FUNC0(MTD_DEBUG_LEVEL0, "MTD_open\n");

	if (devnum >= MAX_MTD_DEVICES)
		return -ENODEV;

	/* You can't open the RO devices RW */
	if ((file->f_mode & FMODE_WRITE) && (minor & 1))
		return -EACCES;

	FUNC6();
	mtd = FUNC3(NULL, devnum);

	if (FUNC1(mtd)) {
		ret = FUNC2(mtd);
		goto out;
	}

	if (mtd->type == MTD_ABSENT) {
		FUNC7(mtd);
		ret = -ENODEV;
		goto out;
	}

	if (mtd->backing_dev_info)
		file->f_mapping->backing_dev_info = mtd->backing_dev_info;

	/* You can't open it RW if it's not a writeable device */
	if ((file->f_mode & FMODE_WRITE) && !(mtd->flags & MTD_WRITEABLE)) {
		FUNC7(mtd);
		ret = -EACCES;
		goto out;
	}

	mfi = FUNC5(sizeof(*mfi), GFP_KERNEL);
	if (!mfi) {
		FUNC7(mtd);
		ret = -ENOMEM;
		goto out;
	}
	mfi->mtd = mtd;
	file->private_data = mfi;

out:
	FUNC8();
	return ret;
}