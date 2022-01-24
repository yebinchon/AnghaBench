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
struct cdc_ncm_ctx {int /*<<< orphan*/ * tx_curr_skb; int /*<<< orphan*/ * tx_rem_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cdc_ncm_ctx*) ; 

__attribute__((used)) static void FUNC2(struct cdc_ncm_ctx *ctx)
{
	if (ctx == NULL)
		return;

	if (ctx->tx_rem_skb != NULL) {
		FUNC0(ctx->tx_rem_skb);
		ctx->tx_rem_skb = NULL;
	}

	if (ctx->tx_curr_skb != NULL) {
		FUNC0(ctx->tx_curr_skb);
		ctx->tx_curr_skb = NULL;
	}

	FUNC1(ctx);
}