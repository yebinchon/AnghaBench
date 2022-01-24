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
struct super_block {int dummy; } ;
struct inode {char* i_private; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; scalar_t__ i_size; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef  int mode_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  hypfs_file_ops ; 
 struct inode* FUNC6 (struct super_block*,int) ; 
 struct dentry* FUNC7 (char const*,struct dentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC11(struct super_block *sb,
					struct dentry *parent, const char *name,
					char *data, mode_t mode)
{
	struct dentry *dentry;
	struct inode *inode;

	FUNC8(&parent->d_inode->i_mutex);
	dentry = FUNC7(name, parent, FUNC10(name));
	if (FUNC2(dentry)) {
		dentry = FUNC1(-ENOMEM);
		goto fail;
	}
	inode = FUNC6(sb, mode);
	if (!inode) {
		FUNC5(dentry);
		dentry = FUNC1(-ENOMEM);
		goto fail;
	}
	if (mode & S_IFREG) {
		inode->i_fop = &hypfs_file_ops;
		if (data)
			inode->i_size = FUNC10(data);
		else
			inode->i_size = 0;
	} else if (mode & S_IFDIR) {
		inode->i_op = &simple_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;
		parent->d_inode->i_nlink++;
	} else
		FUNC0();
	inode->i_private = data;
	FUNC3(dentry, inode);
	FUNC4(dentry);
fail:
	FUNC9(&parent->d_inode->i_mutex);
	return dentry;
}