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
struct inode {struct file_operations const* i_fop; } ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {void* i_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb,
	struct dentry *root, char const *name, const struct file_operations *fops,
	int perm, void *priv)
{
	struct dentry *dentry;
	struct inode *inode;

	dentry = FUNC1(root, name);
	if (!dentry)
		return -ENOMEM;
	inode = FUNC3(sb, S_IFREG | perm);
	if (!inode) {
		FUNC2(dentry);
		return -ENOMEM;
	}
	inode->i_fop = fops;
	FUNC0(dentry, inode);
	dentry->d_inode->i_private = priv;
	return 0;
}