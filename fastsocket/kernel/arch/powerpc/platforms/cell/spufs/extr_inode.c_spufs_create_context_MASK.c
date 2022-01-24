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
struct vfsmount {int dummy; } ;
struct spu_gang {int /*<<< orphan*/  aff_mutex; } ;
struct spu_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ctx; struct spu_gang* i_gang; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct spu_context*) ; 
 int FUNC1 (struct spu_context*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int SPU_CREATE_AFFINITY_MEM ; 
 int SPU_CREATE_AFFINITY_SPU ; 
 int SPU_CREATE_ISOLATE ; 
 int SPU_CREATE_NOSCHED ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  isolated_loader ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct spu_context* FUNC12 (int,struct spu_gang*,struct file*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,struct dentry*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,struct spu_context*) ; 

__attribute__((used)) static int
FUNC17(struct inode *inode, struct dentry *dentry,
			struct vfsmount *mnt, int flags, int mode,
			struct file *aff_filp)
{
	int ret;
	int affinity;
	struct spu_gang *gang;
	struct spu_context *neighbor;

	ret = -EPERM;
	if ((flags & SPU_CREATE_NOSCHED) &&
	    !FUNC4(CAP_SYS_NICE))
		goto out_unlock;

	ret = -EINVAL;
	if ((flags & (SPU_CREATE_NOSCHED | SPU_CREATE_ISOLATE))
	    == SPU_CREATE_ISOLATE)
		goto out_unlock;

	ret = -ENODEV;
	if ((flags & SPU_CREATE_ISOLATE) && !isolated_loader)
		goto out_unlock;

	gang = NULL;
	neighbor = NULL;
	affinity = flags & (SPU_CREATE_AFFINITY_MEM | SPU_CREATE_AFFINITY_SPU);
	if (affinity) {
		gang = FUNC2(inode)->i_gang;
		ret = -EINVAL;
		if (!gang)
			goto out_unlock;
		FUNC8(&gang->aff_mutex);
		neighbor = FUNC12(flags, gang, aff_filp);
		if (FUNC0(neighbor)) {
			ret = FUNC1(neighbor);
			goto out_aff_unlock;
		}
	}

	ret = FUNC14(inode, dentry, flags, mode & S_IRWXUGO);
	if (ret)
		goto out_aff_unlock;

	if (affinity) {
		FUNC16(flags, FUNC2(dentry->d_inode)->i_ctx,
								neighbor);
		if (neighbor)
			FUNC10(neighbor);
	}

	/*
	 * get references for dget and mntget, will be released
	 * in error path of *_open().
	 */
	ret = FUNC13(FUNC5(dentry), FUNC7(mnt));
	if (ret < 0) {
		FUNC3(FUNC15(inode, dentry));
		if (affinity)
			FUNC9(&gang->aff_mutex);
		FUNC9(&inode->i_mutex);
		FUNC11(FUNC2(dentry->d_inode)->i_ctx);
		goto out;
	}

out_aff_unlock:
	if (affinity)
		FUNC9(&gang->aff_mutex);
out_unlock:
	FUNC9(&inode->i_mutex);
out:
	FUNC6(dentry);
	return ret;
}