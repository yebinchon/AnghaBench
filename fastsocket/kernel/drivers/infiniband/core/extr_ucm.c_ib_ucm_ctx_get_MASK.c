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
struct ib_ucm_file {int dummy; } ;
struct ib_ucm_context {int /*<<< orphan*/  ref; struct ib_ucm_file* file; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct ib_ucm_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctx_id_mutex ; 
 int /*<<< orphan*/  ctx_id_table ; 
 struct ib_ucm_context* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ib_ucm_context *FUNC5(struct ib_ucm_file *file, int id)
{
	struct ib_ucm_context *ctx;

	FUNC3(&ctx_id_mutex);
	ctx = FUNC2(&ctx_id_table, id);
	if (!ctx)
		ctx = FUNC0(-ENOENT);
	else if (ctx->file != file)
		ctx = FUNC0(-EINVAL);
	else
		FUNC1(&ctx->ref);
	FUNC4(&ctx_id_mutex);

	return ctx;
}