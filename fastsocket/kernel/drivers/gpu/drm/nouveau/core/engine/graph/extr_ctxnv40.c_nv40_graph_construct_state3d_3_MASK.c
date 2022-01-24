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
struct nouveau_grctx {int ctxvals_pos; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  SWAP_DIRECTION ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_grctx*,int) ; 
 int /*<<< orphan*/  cp_swap_state3d_3_is_save ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_grctx *ctx)
{
	int len = FUNC4(ctx->device) ? 0x0084 : 0x0684;

	FUNC3 (ctx, 0x300000);
	FUNC1 (ctx, len - 4);
	FUNC0 (ctx, SWAP_DIRECTION, SAVE, cp_swap_state3d_3_is_save);
	FUNC1 (ctx, len);
	FUNC2(ctx, cp_swap_state3d_3_is_save);
	FUNC3 (ctx, 0x800001);

	ctx->ctxvals_pos += len;
}