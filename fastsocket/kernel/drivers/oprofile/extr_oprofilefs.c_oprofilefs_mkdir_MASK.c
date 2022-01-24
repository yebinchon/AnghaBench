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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC1 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

struct dentry *FUNC4(struct super_block *sb,
	struct dentry *root, char const *name)
{
	struct dentry *dentry;
	struct inode *inode;

	dentry = FUNC1(root, name);
	if (!dentry)
		return NULL;
	inode = FUNC3(sb, S_IFDIR | 0755);
	if (!inode) {
		FUNC2(dentry);
		return NULL;
	}
	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	FUNC0(dentry, inode);
	return dentry;
}