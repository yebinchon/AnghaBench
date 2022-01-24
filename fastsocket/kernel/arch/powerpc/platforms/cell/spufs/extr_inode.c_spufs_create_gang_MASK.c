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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct dentry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
			struct dentry *dentry,
			struct vfsmount *mnt, int mode)
{
	int ret;

	ret = FUNC7(inode, dentry, mode & S_IRWXUGO);
	if (ret)
		goto out;

	/*
	 * get references for dget and mntget, will be released
	 * in error path of *_open().
	 */
	ret = FUNC6(FUNC1(dentry), FUNC3(mnt));
	if (ret < 0) {
		int err = FUNC5(inode, dentry);
		FUNC0(err);
	}

out:
	FUNC4(&inode->i_mutex);
	FUNC2(dentry);
	return ret;
}