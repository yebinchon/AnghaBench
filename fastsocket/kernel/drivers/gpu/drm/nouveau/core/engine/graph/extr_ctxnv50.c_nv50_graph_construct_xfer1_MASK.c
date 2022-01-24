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
struct nouveau_grctx {int ctxvals_pos; int ctxvals_base; struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY ; 
 int /*<<< orphan*/  CP_SEEK_1 ; 
 int /*<<< orphan*/  CP_SET_XFER_POINTER ; 
 int /*<<< orphan*/  CP_XFER_1 ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_grctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_grctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC18 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC19 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC20 (struct nouveau_grctx*) ; 
 int FUNC21 (struct nouveau_device*,int) ; 

__attribute__((used)) static void
FUNC22(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	int i;
	int offset;
	int size = 0;
	u32 units = FUNC21 (ctx->device, 0x1540);

	offset = (ctx->ctxvals_pos+0x3f)&~0x3f;
	ctx->ctxvals_base = offset;

	if (device->chipset < 0xa0) {
		/* Strand 0 */
		ctx->ctxvals_pos = offset;
		FUNC6(ctx);
		FUNC8(ctx);
		FUNC16(ctx);
		FUNC4(ctx);
		FUNC19(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 1 */
		ctx->ctxvals_pos = offset + 0x1;
		FUNC18(ctx);
		FUNC7(ctx);
		FUNC5(ctx);
		FUNC10(ctx);
		FUNC11(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 2 */
		ctx->ctxvals_pos = offset + 0x2;
		FUNC3(ctx);
		FUNC15(ctx);
		FUNC12(ctx);
		FUNC14(ctx);
		FUNC13(ctx);
		FUNC17(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 3: per-ROP group state */
		ctx->ctxvals_pos = offset + 3;
		for (i = 0; i < 6; i++)
			if (units & (1 << (i + 16)))
				FUNC9(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strands 4-7: per-TP state */
		for (i = 0; i < 4; i++) {
			ctx->ctxvals_pos = offset + 4 + i;
			if (units & (1 << (2 * i)))
				FUNC20(ctx);
			if (units & (1 << (2 * i + 1)))
				FUNC20(ctx);
			if ((ctx->ctxvals_pos-offset)/8 > size)
				size = (ctx->ctxvals_pos-offset)/8;
		}
	} else {
		/* Strand 0 */
		ctx->ctxvals_pos = offset;
		FUNC6(ctx);
		FUNC8(ctx);
		FUNC17(ctx);
		FUNC5(ctx);
		FUNC15(ctx);
		FUNC12(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 1 */
		ctx->ctxvals_pos = offset + 1;
		FUNC13(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 2 */
		ctx->ctxvals_pos = offset + 2;
		if (device->chipset == 0xa0)
			FUNC14(ctx);
		FUNC16(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 3 */
		ctx->ctxvals_pos = offset + 3;
		FUNC18(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 4 */
		ctx->ctxvals_pos = offset + 4;
		FUNC3(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 5 */
		ctx->ctxvals_pos = offset + 5;
		FUNC11(ctx);
		FUNC10(ctx);
		/* per-ROP context */
		for (i = 0; i < 8; i++)
			if (units & (1<<(i+16)))
				FUNC9(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 6 */
		ctx->ctxvals_pos = offset + 6;
		FUNC19(ctx);
		FUNC4(ctx);
		FUNC7(ctx);
		if (units & (1 << 0))
			FUNC20(ctx);
		if (units & (1 << 1))
			FUNC20(ctx);
		if (units & (1 << 2))
			FUNC20(ctx);
		if (units & (1 << 3))
			FUNC20(ctx);
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;

		/* Strand 7 */
		ctx->ctxvals_pos = offset + 7;
		if (device->chipset == 0xa0) {
			if (units & (1 << 4))
				FUNC20(ctx);
			if (units & (1 << 5))
				FUNC20(ctx);
			if (units & (1 << 6))
				FUNC20(ctx);
			if (units & (1 << 7))
				FUNC20(ctx);
			if (units & (1 << 8))
				FUNC20(ctx);
			if (units & (1 << 9))
				FUNC20(ctx);
		} else {
			FUNC14(ctx);
		}
		if ((ctx->ctxvals_pos-offset)/8 > size)
			size = (ctx->ctxvals_pos-offset)/8;
	}

	ctx->ctxvals_pos = offset + size * 8;
	ctx->ctxvals_pos = (ctx->ctxvals_pos+0x3f)&~0x3f;
	FUNC0 (ctx, offset);
	FUNC1 (ctx, CP_SET_XFER_POINTER);
	FUNC0 (ctx, size);
	FUNC1 (ctx, CP_SEEK_1);
	FUNC1 (ctx, CP_XFER_1);
	FUNC2(ctx, XFER, BUSY);
}