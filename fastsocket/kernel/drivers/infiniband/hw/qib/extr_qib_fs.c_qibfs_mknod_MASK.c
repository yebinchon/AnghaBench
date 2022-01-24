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
struct inode {int i_mode; struct file_operations const* i_fop; int /*<<< orphan*/ * i_op; void* i_private; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_blocks; scalar_t__ i_gid; scalar_t__ i_uid; int /*<<< orphan*/  i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EPERM ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
		       int mode, const struct file_operations *fops,
		       void *data)
{
	int error;
	struct inode *inode = FUNC2(dir->i_sb);

	if (!inode) {
		error = -EPERM;
		goto bail;
	}

	inode->i_mode = mode;
	inode->i_uid = 0;
	inode->i_gid = 0;
	inode->i_blocks = 0;
	inode->i_atime = CURRENT_TIME;
	inode->i_mtime = inode->i_atime;
	inode->i_ctime = inode->i_atime;
	inode->i_private = data;
	if ((mode & S_IFMT) == S_IFDIR) {
		inode->i_op = &simple_dir_inode_operations;
		FUNC1(inode);
		FUNC1(dir);
	}

	inode->i_fop = fops;

	FUNC0(dentry, inode);
	error = 0;

bail:
	return error;
}