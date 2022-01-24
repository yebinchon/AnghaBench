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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; } ;
struct inode {int /*<<< orphan*/  i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IBMASMFS_MAGIC ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int S_IFDIR ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct dentry*) ; 
 int /*<<< orphan*/  ibmasmfs_dir_ops ; 
 struct inode* FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  ibmasmfs_s_ops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 

__attribute__((used)) static int FUNC4 (struct super_block *sb, void *data, int silent)
{
	struct inode *root;
	struct dentry *root_dentry;

	sb->s_blocksize = PAGE_CACHE_SIZE;
	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
	sb->s_magic = IBMASMFS_MAGIC;
	sb->s_op = &ibmasmfs_s_ops;
	sb->s_time_gran = 1;

	root = FUNC2 (sb, S_IFDIR | 0500);
	if (!root)
		return -ENOMEM;

	root->i_op = &simple_dir_inode_operations;
	root->i_fop = ibmasmfs_dir_ops;

	root_dentry = FUNC0(root);
	if (!root_dentry) {
		FUNC3(root);
		return -ENOMEM;
	}
	sb->s_root = root_dentry;

	FUNC1(sb, root_dentry);
	return 0;
}