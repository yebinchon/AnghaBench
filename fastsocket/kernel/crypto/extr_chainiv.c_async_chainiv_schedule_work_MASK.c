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
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct async_chainiv_ctx {int err; int /*<<< orphan*/  postponed; int /*<<< orphan*/  state; TYPE_1__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHAINIV_STATE_INUSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcrypto_wq ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct async_chainiv_ctx *ctx)
{
	int queued;
	int err = ctx->err;

	if (!ctx->queue.qlen) {
		FUNC3();
		FUNC1(CHAINIV_STATE_INUSE, &ctx->state);

		if (!ctx->queue.qlen ||
		    FUNC4(CHAINIV_STATE_INUSE, &ctx->state))
			goto out;
	}

	queued = FUNC2(kcrypto_wq, &ctx->postponed);
	FUNC0(!queued);

out:
	return err;
}