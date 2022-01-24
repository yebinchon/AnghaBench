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
typedef  int u32 ;
struct nouveau_grctx {int ctxvals_pos; struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY ; 
 int /*<<< orphan*/  CP_SEEK_2 ; 
 int /*<<< orphan*/  CP_SET_XFER_POINTER ; 
 int /*<<< orphan*/  CP_XFER_2 ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_grctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_grctx*) ; 
 int FUNC4 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	int i;
	u32 offset;
	u32 units = FUNC4 (ctx->device, 0x1540);
	int size = 0;

	offset = (ctx->ctxvals_pos+0x3f)&~0x3f;

	if (device->chipset < 0xa0) {
		for (i = 0; i < 8; i++) {
			ctx->ctxvals_pos = offset + i;
			/* that little bugger belongs to csched. No idea
			 * what it's doing here. */
			if (i == 0)
				FUNC5(ctx, 1, 0x08100c12); /* FP_INTERPOLANT_CTRL */
			if (units & (1 << i))
				FUNC3(ctx);
			if ((ctx->ctxvals_pos-offset)/8 > size)
				size = (ctx->ctxvals_pos-offset)/8;
		}
	} else {
		/* Strand 0: TPs 0, 1 */
		ctx->ctxvals_pos = offset;
		/* that little bugger belongs to csched. No idea
		 * what it's doing here. */
		FUNC5(ctx, 1, 0x08100c12); /* FP_INTERPOLANT_CTRL */
		if (units & (1 << 0))
			FUNC3(ctx);
		if (units & (1 << 1))
			FUNC3(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 1: TPs 2, 3 */
		ctx->ctxvals_pos = offset + 1;
		if (units & (1 << 2))
			FUNC3(ctx);
		if (units & (1 << 3))
			FUNC3(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 2: TPs 4, 5, 6 */
		ctx->ctxvals_pos = offset + 2;
		if (units & (1 << 4))
			FUNC3(ctx);
		if (units & (1 << 5))
			FUNC3(ctx);
		if (units & (1 << 6))
			FUNC3(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 3: TPs 7, 8, 9 */
		ctx->ctxvals_pos = offset + 3;
		if (units & (1 << 7))
			FUNC3(ctx);
		if (units & (1 << 8))
			FUNC3(ctx);
		if (units & (1 << 9))
			FUNC3(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;
	}
	ctx->ctxvals_pos = offset + size * 8;
	ctx->ctxvals_pos = (ctx->ctxvals_pos+0x3f)&~0x3f;
	FUNC0 (ctx, offset);
	FUNC1 (ctx, CP_SET_XFER_POINTER);
	FUNC0 (ctx, size);
	FUNC1 (ctx, CP_SEEK_2);
	FUNC1 (ctx, CP_XFER_2);
	FUNC2(ctx, XFER, BUSY);
}