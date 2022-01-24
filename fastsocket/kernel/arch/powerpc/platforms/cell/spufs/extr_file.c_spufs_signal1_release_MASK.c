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
struct spufs_inode_info {int /*<<< orphan*/  i_openers; struct spu_context* i_ctx; } ;
struct spu_context {int /*<<< orphan*/  mapping_lock; int /*<<< orphan*/ * signal1; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct spufs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, struct file *file)
{
	struct spufs_inode_info *i = FUNC0(inode);
	struct spu_context *ctx = i->i_ctx;

	FUNC1(&ctx->mapping_lock);
	if (!--i->i_openers)
		ctx->signal1 = NULL;
	FUNC2(&ctx->mapping_lock);
	return 0;
}