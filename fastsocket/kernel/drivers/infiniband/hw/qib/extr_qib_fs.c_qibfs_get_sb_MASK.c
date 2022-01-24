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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct file_system_type {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file_system_type*,int,void*,int /*<<< orphan*/ ,struct vfsmount*) ; 
 int /*<<< orphan*/  qib_super ; 
 int /*<<< orphan*/  qibfs_fill_super ; 

__attribute__((used)) static int FUNC1(struct file_system_type *fs_type, int flags,
			const char *dev_name, void *data, struct vfsmount *mnt)
{
	int ret = FUNC0(fs_type, flags, data,
				qibfs_fill_super, mnt);
	if (ret >= 0)
		qib_super = mnt->mnt_sb;
	return ret;
}