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
struct spu_context {int flags; TYPE_1__* ops; int /*<<< orphan*/  prio; scalar_t__ spu; } ;
struct spu {int dummy; } ;
struct TYPE_2__ {unsigned long (* runcntl_read ) (struct spu_context*) ;} ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int SPU_CREATE_NOSCHED ; 
 unsigned long SPU_RUNCNTL_RUNNABLE ; 
 int /*<<< orphan*/  SPU_UTIL_USER ; 
 int /*<<< orphan*/  FUNC0 (struct spu*,struct spu_context*) ; 
 int /*<<< orphan*/  current ; 
 struct spu* FUNC1 (struct spu_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_context*) ; 
 struct spu* FUNC5 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_context*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (struct spu_context*) ; 

int FUNC9(struct spu_context *ctx, unsigned long flags)
{
	struct spu *spu;

	/*
	 * If there are multiple threads waiting for a single context
	 * only one actually binds the context while the others will
	 * only be able to acquire the state_mutex once the context
	 * already is in runnable state.
	 */
	if (ctx->spu)
		return 0;

spu_activate_top:
	if (FUNC3(current))
		return -ERESTARTSYS;

	spu = FUNC5(ctx);
	/*
	 * If this is a realtime thread we try to get it running by
	 * preempting a lower priority thread.
	 */
	if (!spu && FUNC2(ctx->prio))
		spu = FUNC1(ctx);
	if (spu) {
		unsigned long runcntl;

		runcntl = ctx->ops->runcntl_read(ctx);
		FUNC0(spu, ctx);
		if (runcntl & SPU_RUNCNTL_RUNNABLE)
			FUNC7(ctx, SPU_UTIL_USER);

		return 0;
	}

	if (ctx->flags & SPU_CREATE_NOSCHED) {
		FUNC6(ctx);
		goto spu_activate_top;
	}

	FUNC4(ctx);

	return 0;
}