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
struct vfsmount {int dummy; } ;
struct mtd_info {int dummy; } ;
struct file_system_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct mtd_info*) ; 
 struct mtd_info* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct file_system_type*,int,char const*,void*,struct mtd_info*,int (*) (struct super_block*,void*,int),struct vfsmount*) ; 

__attribute__((used)) static int FUNC5(struct file_system_type *fs_type, int flags,
			 const char *dev_name, void *data, int mtdnr,
			 int (*fill_super)(struct super_block *, void *, int),
			 struct vfsmount *mnt)
{
	struct mtd_info *mtd;

	mtd = FUNC3(NULL, mtdnr);
	if (FUNC1(mtd)) {
		FUNC0(0, "MTDSB: Device #%u doesn't appear to exist\n", mtdnr);
		return FUNC2(mtd);
	}

	return FUNC4(fs_type, flags, dev_name, data, mtd, fill_super,
			      mnt);
}