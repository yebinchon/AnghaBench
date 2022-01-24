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
struct spu_context {int flags; int /*<<< orphan*/  state_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PRIO ; 
 int SPU_CREATE_NOSCHED ; 
 int /*<<< orphan*/  FUNC0 (struct spu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct spu_context*) ; 
 int /*<<< orphan*/  spu_yield__enter ; 

void FUNC4(struct spu_context *ctx)
{
	FUNC3(spu_yield__enter, ctx);
	if (!(ctx->flags & SPU_CREATE_NOSCHED)) {
		FUNC1(&ctx->state_mutex);
		FUNC0(ctx, 0, MAX_PRIO);
		FUNC2(&ctx->state_mutex);
	}
}