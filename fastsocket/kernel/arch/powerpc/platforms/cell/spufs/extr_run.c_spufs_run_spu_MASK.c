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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  libassist; } ;
struct spu_context {int event_return; int /*<<< orphan*/  run_mutex; TYPE_1__ stats; int /*<<< orphan*/  sched_flags; struct spu* spu; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  stop_wq; } ;
struct spu {int dummy; } ;

/* Variables and functions */
 long ERESTARTSYS ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SPU_SCHED_NOTIFY_ACTIVE ; 
 int SPU_STATUS_SINGLE_STEP ; 
 int SPU_STATUS_STOPPED_BY_HALT ; 
 int SPU_STATUS_STOPPED_BY_STOP ; 
 int SPU_STOP_STATUS_SHIFT ; 
 int /*<<< orphan*/  SPU_UTIL_SYSTEM ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_context*) ; 
 int FUNC8 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC9 (struct spu_context*) ; 
 int FUNC10 (struct spu_context*,int*,int*) ; 
 int FUNC11 (struct spu_context*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct spu_context*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct spu*,struct spu_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct spu_context*) ; 
 int FUNC18 (struct spu_context*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int) ; 

long FUNC22(struct spu_context *ctx, u32 *npc, u32 *event)
{
	int ret;
	struct spu *spu;
	u32 status;

	if (FUNC2(&ctx->run_mutex))
		return -ERESTARTSYS;

	ctx->event_return = 0;

	ret = FUNC5(ctx);
	if (ret)
		goto out_unlock;

	FUNC7(ctx);

	FUNC14(ctx);

	ret = FUNC11(ctx, npc);
	if (ret) {
		FUNC9(ctx);
		goto out;
	}

	do {
		ret = FUNC19(ctx->stop_wq, FUNC12(ctx, &status));
		if (FUNC21(ret)) {
			/*
			 * This is nasty: we need the state_mutex for all the
			 * bookkeeping even if the syscall was interrupted by
			 * a signal. ewww.
			 */
			FUNC1(&ctx->state_mutex);
			break;
		}
		spu = ctx->spu;
		if (FUNC21(FUNC20(SPU_SCHED_NOTIFY_ACTIVE,
						&ctx->sched_flags))) {
			if (!(status & SPU_STATUS_STOPPED_BY_STOP)) {
				FUNC13(spu, ctx);
				continue;
			}
		}

		FUNC16(ctx, SPU_UTIL_SYSTEM);

		if ((status & SPU_STATUS_STOPPED_BY_STOP) &&
		    (status >> SPU_STOP_STATUS_SHIFT == 0x2104)) {
			ret = FUNC8(ctx);
			if (ret)
				break;
			status &= ~SPU_STATUS_STOPPED_BY_STOP;
		}
		ret = FUNC18(ctx);
		if (ret)
			break;

		ret = FUNC17(ctx);
		if (ret)
			break;

		if (FUNC4(current))
			ret = -ERESTARTSYS;
	} while (!ret && !(status & (SPU_STATUS_STOPPED_BY_STOP |
				      SPU_STATUS_STOPPED_BY_HALT |
				       SPU_STATUS_SINGLE_STEP)));

	FUNC6(ctx);
	ret = FUNC10(ctx, npc, &status);
	FUNC15(ctx);

	if ((status & SPU_STATUS_STOPPED_BY_STOP) &&
	    (((status >> SPU_STOP_STATUS_SHIFT) & 0x3f00) == 0x2100))
		ctx->stats.libassist++;

	if ((ret == 0) ||
	    ((ret == -ERESTARTSYS) &&
	     ((status & SPU_STATUS_STOPPED_BY_HALT) ||
	      (status & SPU_STATUS_SINGLE_STEP) ||
	      ((status & SPU_STATUS_STOPPED_BY_STOP) &&
	       (status >> SPU_STOP_STATUS_SHIFT != 0x2104)))))
		ret = status;

	/* Note: we don't need to force_sig SIGTRAP on single-step
	 * since we have TIF_SINGLESTEP set, thus the kernel will do
	 * it upon return from the syscall anyawy
	 */
	if (FUNC21(status & SPU_STATUS_SINGLE_STEP))
		ret = -ERESTARTSYS;

	else if (FUNC21((status & SPU_STATUS_STOPPED_BY_STOP)
	    && (status >> SPU_STOP_STATUS_SHIFT) == 0x3fff)) {
		FUNC0(SIGTRAP, current);
		ret = -ERESTARTSYS;
	}

out:
	*event = ctx->event_return;
out_unlock:
	FUNC3(&ctx->run_mutex);
	return ret;
}