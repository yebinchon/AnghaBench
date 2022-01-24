#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spu_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  d_inode; TYPE_2__* d_parent; } ;
struct TYPE_6__ {struct spu_context* i_ctx; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_context*) ; 
 int FUNC6 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct spu_context *ctx;
	struct inode *parent;
	struct dentry *dir;
	int ret;

	dir = file->f_path.dentry;
	parent = dir->d_parent->d_inode;
	ctx = FUNC0(dir->d_inode)->i_ctx;

	FUNC3(&parent->i_mutex, I_MUTEX_PARENT);
	ret = FUNC6(parent, dir);
	FUNC4(&parent->i_mutex);
	FUNC1(ret);

	/* We have to give up the mm_struct */
	FUNC5(ctx);

	return FUNC2(inode, file);
}