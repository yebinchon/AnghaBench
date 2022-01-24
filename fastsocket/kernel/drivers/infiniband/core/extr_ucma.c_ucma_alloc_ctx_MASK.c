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
struct ucma_file {int /*<<< orphan*/  ctx_list; } ;
struct ucma_context {int /*<<< orphan*/  list; int /*<<< orphan*/  id; struct ucma_file* file; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ctx_idr ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ucma_context*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ucma_context*) ; 
 struct ucma_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ucma_context *FUNC10(struct ucma_file *file)
{
	struct ucma_context *ctx;
	int ret;

	ctx = FUNC6(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC1(&ctx->ref, 1);
	FUNC4(&ctx->comp);
	FUNC0(&ctx->mc_list);
	ctx->file = file;

	do {
		ret = FUNC3(&ctx_idr, GFP_KERNEL);
		if (!ret)
			goto error;

		FUNC8(&mut);
		ret = FUNC2(&ctx_idr, ctx, &ctx->id);
		FUNC9(&mut);
	} while (ret == -EAGAIN);

	if (ret)
		goto error;

	FUNC7(&ctx->list, &file->ctx_list);
	return ctx;

error:
	FUNC5(ctx);
	return NULL;
}