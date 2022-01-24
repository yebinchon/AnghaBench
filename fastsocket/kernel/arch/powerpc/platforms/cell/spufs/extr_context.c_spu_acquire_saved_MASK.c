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
struct spu_context {scalar_t__ state; int /*<<< orphan*/  sched_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_SCHED_WAS_ACTIVE ; 
 scalar_t__ SPU_STATE_SAVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct spu_context*) ; 
 int /*<<< orphan*/  spu_acquire_saved__enter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*) ; 

int FUNC4(struct spu_context *ctx)
{
	int ret;

	FUNC2(spu_acquire_saved__enter, ctx);

	ret = FUNC1(ctx);
	if (ret)
		return ret;

	if (ctx->state != SPU_STATE_SAVED) {
		FUNC0(SPU_SCHED_WAS_ACTIVE, &ctx->sched_flags);
		FUNC3(ctx);
	}

	return 0;
}