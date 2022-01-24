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
struct cdc_ncm_ctx {scalar_t__ tx_timer_pending; int /*<<< orphan*/  mtx; int /*<<< orphan*/ * netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdc_ncm_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long param)
{
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)param;

	FUNC3(&ctx->mtx);
	if (ctx->tx_timer_pending != 0) {
		ctx->tx_timer_pending--;
		FUNC0(ctx);
		FUNC4(&ctx->mtx);
	} else if (ctx->netdev != NULL) {
		FUNC4(&ctx->mtx);
		FUNC1(ctx->netdev);
		FUNC5(NULL, ctx->netdev);
		FUNC2(ctx->netdev);
	} else {
		FUNC4(&ctx->mtx);
	}
}