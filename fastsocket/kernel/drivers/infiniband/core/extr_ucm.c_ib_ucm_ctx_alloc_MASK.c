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
struct ib_ucm_file {int /*<<< orphan*/  ctxs; } ;
struct ib_ucm_context {int /*<<< orphan*/  file_list; int /*<<< orphan*/  id; int /*<<< orphan*/  events; struct ib_ucm_file* file; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ctx_id_mutex ; 
 int /*<<< orphan*/  ctx_id_table ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ib_ucm_context*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_ucm_context*) ; 
 struct ib_ucm_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ib_ucm_context *FUNC10(struct ib_ucm_file *file)
{
	struct ib_ucm_context *ctx;
	int result;

	ctx = FUNC6(sizeof *ctx, GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC1(&ctx->ref, 1);
	FUNC4(&ctx->comp);
	ctx->file = file;
	FUNC0(&ctx->events);

	do {
		result = FUNC3(&ctx_id_table, GFP_KERNEL);
		if (!result)
			goto error;

		FUNC8(&ctx_id_mutex);
		result = FUNC2(&ctx_id_table, ctx, &ctx->id);
		FUNC9(&ctx_id_mutex);
	} while (result == -EAGAIN);

	if (result)
		goto error;

	FUNC7(&ctx->file_list, &file->ctxs);
	return ctx;

error:
	FUNC5(ctx);
	return NULL;
}