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
struct super_block {struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; struct hypfs_sb_info* s_fs_info; } ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hypfs_sb_info {int /*<<< orphan*/  update_file; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  lock; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HYPFS_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACHINE_IS_VM ; 
 int /*<<< orphan*/  PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct dentry*) ; 
 int FUNC6 (struct super_block*,struct dentry*) ; 
 struct inode* FUNC7 (struct super_block*,int) ; 
 scalar_t__ FUNC8 (void*,struct super_block*) ; 
 int /*<<< orphan*/  hypfs_s_ops ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int FUNC10 (struct super_block*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct hypfs_sb_info* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC15(struct super_block *sb, void *data, int silent)
{
	struct inode *root_inode;
	struct dentry *root_dentry;
	int rc = 0;
	struct hypfs_sb_info *sbi;

	sbi = FUNC12(sizeof(struct hypfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	FUNC13(&sbi->lock);
	sbi->uid = FUNC3();
	sbi->gid = FUNC2();
	sb->s_fs_info = sbi;
	sb->s_blocksize = PAGE_CACHE_SIZE;
	sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
	sb->s_magic = HYPFS_MAGIC;
	sb->s_op = &hypfs_s_ops;
	if (FUNC8(data, sb))
		return -EINVAL;
	root_inode = FUNC7(sb, S_IFDIR | 0755);
	if (!root_inode)
		return -ENOMEM;
	root_inode->i_op = &simple_dir_inode_operations;
	root_inode->i_fop = &simple_dir_operations;
	sb->s_root = root_dentry = FUNC4(root_inode);
	if (!root_dentry) {
		FUNC11(root_inode);
		return -ENOMEM;
	}
	if (MACHINE_IS_VM)
		rc = FUNC10(sb, root_dentry);
	else
		rc = FUNC6(sb, root_dentry);
	if (rc)
		return rc;
	sbi->update_file = FUNC5(sb, root_dentry);
	if (FUNC0(sbi->update_file))
		return FUNC1(sbi->update_file);
	FUNC9(sb);
	FUNC14("Hypervisor filesystem mounted\n");
	return 0;
}