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
struct spu_context {int flags; } ;
struct file {TYPE_1__* f_dentry; int /*<<< orphan*/ * f_op; } ;
struct fdtable {int max_fds; int /*<<< orphan*/  open_fds; } ;
struct TYPE_6__ {struct spu_context* i_ctx; } ;
struct TYPE_5__ {int /*<<< orphan*/  files; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int SPU_CREATE_NOSCHED ; 
 TYPE_2__* current ; 
 struct file* FUNC2 (int) ; 
 struct fdtable* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spufs_context_fops ; 

__attribute__((used)) static struct spu_context *FUNC4(int *fd)
{
	struct fdtable *fdt = FUNC3(current->files);
	struct file *file;
	struct spu_context *ctx = NULL;

	for (; *fd < fdt->max_fds; (*fd)++) {
		if (!FUNC0(*fd, fdt->open_fds))
			continue;

		file = FUNC2(*fd);

		if (!file || file->f_op != &spufs_context_fops)
			continue;

		ctx = FUNC1(file->f_dentry->d_inode)->i_ctx;
		if (ctx->flags & SPU_CREATE_NOSCHED)
			continue;

		break;
	}

	return ctx;
}