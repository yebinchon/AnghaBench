#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spu_context {unsigned int flags; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_gid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {struct spu_context* i_ctx; int /*<<< orphan*/  i_gang; } ;
struct TYPE_3__ {scalar_t__ debug; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 unsigned int SPU_CREATE_NOSCHED ; 
 int S_IFDIR ; 
 int S_ISGID ; 
 struct spu_context* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC7 (struct spu_context*) ; 
 int /*<<< orphan*/  spufs_dir_contents ; 
 int /*<<< orphan*/  spufs_dir_debug_contents ; 
 int /*<<< orphan*/  spufs_dir_nosched_contents ; 
 int FUNC8 (struct dentry*,int /*<<< orphan*/ ,int,struct spu_context*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct inode *dir, struct dentry *dentry, unsigned int flags,
		int mode)
{
	int ret;
	struct inode *inode;
	struct spu_context *ctx;

	ret = -ENOSPC;
	inode = FUNC10(dir->i_sb, mode | S_IFDIR);
	if (!inode)
		goto out;

	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		inode->i_mode &= S_ISGID;
	}
	ctx = FUNC1(FUNC0(dir)->i_gang); /* XXX gang */
	FUNC0(inode)->i_ctx = ctx;
	if (!ctx)
		goto out_iput;

	ctx->flags = flags;
	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	if (flags & SPU_CREATE_NOSCHED)
		ret = FUNC8(dentry, spufs_dir_nosched_contents,
					 mode, ctx);
	else
		ret = FUNC8(dentry, spufs_dir_contents, mode, ctx);

	if (ret)
		goto out_free_ctx;

	if (FUNC9(dir->i_sb)->debug)
		ret = FUNC8(dentry, spufs_dir_debug_contents,
				mode, ctx);

	if (ret)
		goto out_free_ctx;

	FUNC2(dentry, inode);
	FUNC3(dentry);
	FUNC4(dir);
	FUNC4(dentry->d_inode);
	goto out;

out_free_ctx:
	FUNC7(ctx);
	FUNC6(ctx);
out_iput:
	FUNC5(inode);
out:
	return ret;
}