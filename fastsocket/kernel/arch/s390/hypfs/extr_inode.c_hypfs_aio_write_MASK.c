#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_root; struct hypfs_sb_info* s_fs_info; } ;
struct kiocb {TYPE_4__* ki_filp; } ;
struct iovec {int dummy; } ;
struct hypfs_sb_info {scalar_t__ last_update; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_8__ {TYPE_3__ f_path; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MACHINE_IS_VM ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct iovec const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static ssize_t FUNC9(struct kiocb *iocb, const struct iovec *iov,
			      unsigned long nr_segs, loff_t offset)
{
	int rc;
	struct super_block *sb;
	struct hypfs_sb_info *fs_info;
	size_t count = FUNC5(iov, nr_segs);

	sb = iocb->ki_filp->f_path.dentry->d_inode->i_sb;
	fs_info = sb->s_fs_info;
	/*
	 * Currently we only allow one update per second for two reasons:
	 * 1. diag 204 is VERY expensive
	 * 2. If several processes do updates in parallel and then read the
	 *    hypfs data, the likelihood of collisions is reduced, if we restrict
	 *    the minimum update interval. A collision occurs, if during the
	 *    data gathering of one process another process triggers an update
	 *    If the first process wants to ensure consistent data, it has
	 *    to restart data collection in this case.
	 */
	FUNC6(&fs_info->lock);
	if (fs_info->last_update == FUNC0()) {
		rc = -EBUSY;
		goto out;
	}
	FUNC1(sb->s_root);
	if (MACHINE_IS_VM)
		rc = FUNC4(sb, sb->s_root);
	else
		rc = FUNC2(sb, sb->s_root);
	if (rc) {
		FUNC8("Updating the hypfs tree failed\n");
		FUNC1(sb->s_root);
		goto out;
	}
	FUNC3(sb);
	rc = count;
out:
	FUNC7(&fs_info->lock);
	return rc;
}