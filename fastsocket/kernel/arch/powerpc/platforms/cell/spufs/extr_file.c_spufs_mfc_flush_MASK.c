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
struct spu_context {scalar_t__ tagwait; TYPE_1__* ops; int /*<<< orphan*/  mfc_wq; } ;
struct file {struct spu_context* private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {int (* set_mfc_query ) (struct spu_context*,scalar_t__,int) ;scalar_t__ (* read_mfc_tagstatus ) (struct spu_context*) ;} ;

/* Variables and functions */
 int FUNC0 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_context*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct spu_context*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct spu_context*) ; 

__attribute__((used)) static int FUNC5(struct file *file, fl_owner_t id)
{
	struct spu_context *ctx = file->private_data;
	int ret;

	ret = FUNC0(ctx);
	if (ret)
		goto out;
#if 0
/* this currently hangs */
	ret = spufs_wait(ctx->mfc_wq,
			 ctx->ops->set_mfc_query(ctx, ctx->tagwait, 2));
	if (ret)
		goto out;
	ret = spufs_wait(ctx->mfc_wq,
			 ctx->ops->read_mfc_tagstatus(ctx) == ctx->tagwait);
	if (ret)
		goto out;
#else
	ret = 0;
#endif
	FUNC1(ctx);
out:
	return ret;
}