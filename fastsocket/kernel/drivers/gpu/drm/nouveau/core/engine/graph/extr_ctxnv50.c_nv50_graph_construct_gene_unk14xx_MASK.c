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
struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	/* middle of area 2 on pre-NVA0, beginning of area 2 on NVA0, area 7 on >NVA0 */
	if (device->chipset != 0x50) {
		FUNC1(ctx, 5, 0);		/* ffffffff */
		FUNC1(ctx, 1, 0x80c14);	/* 01ffffff SEMANTIC_COLOR */
		FUNC1(ctx, 1, 0);		/* 00000001 */
		FUNC1(ctx, 1, 0);		/* 000003ff */
		FUNC1(ctx, 1, 0x804);		/* 00000fff SEMANTIC_CLIP */
		FUNC1(ctx, 1, 0);		/* 00000001 */
		FUNC1(ctx, 2, 4);		/* 7f, ff */
		FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	}
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 4);			/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 4);			/* 000000ff GP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 0);			/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0x10);			/* 7f/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC1(ctx, 1, 0);			/* 000000ff VP_CLIP_DISTANCE_ENABLE */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 0);		/* 3ff */
	FUNC1(ctx, 1, 0);			/* 000000ff tesla UNK1940 */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK0D7C */
	FUNC1(ctx, 1, 0x804);			/* 00000fff SEMANTIC_CLIP */
	FUNC1(ctx, 1, 1);			/* 00000001 VIEWPORT_TRANSFORM_EN */
	FUNC1(ctx, 1, 0x1a);			/* 0000001f POLYGON_MODE */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 0x7f);		/* 000000ff tesla UNK0FFC */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 1);			/* 00000001 SHADE_MODEL */
	FUNC1(ctx, 1, 0x80c14);		/* 01ffffff SEMANTIC_COLOR */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 0x8100c12);		/* 1fffffff FP_INTERPOLANT_CTRL */
	FUNC1(ctx, 1, 4);			/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 4);			/* 000000ff GP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 0);			/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0x10);			/* 7f/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK0D7C */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK0F8C */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 1);			/* 00000001 VIEWPORT_TRANSFORM_EN */
	FUNC1(ctx, 1, 0x8100c12);		/* 1fffffff FP_INTERPOLANT_CTRL */
	FUNC1(ctx, 4, 0);			/* ffffffff NOPERSPECTIVE_BITMAP */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 0);			/* 0000000f */
	if (device->chipset == 0x50)
		FUNC1(ctx, 1, 0x3ff);		/* 000003ff tesla UNK0D68 */
	else
		FUNC1(ctx, 1, 0x7ff);		/* 000007ff tesla UNK0D68 */
	FUNC1(ctx, 1, 0x80c14);		/* 01ffffff SEMANTIC_COLOR */
	FUNC1(ctx, 1, 0);			/* 00000001 VERTEX_TWO_SIDE_ENABLE */
	FUNC1(ctx, 0x30, 0);			/* ffffffff VIEWPORT_SCALE: X0, Y0, Z0, X1, Y1, ... */
	FUNC1(ctx, 3, 0);			/* f, 0, 0 */
	FUNC1(ctx, 3, 0);			/* ffffffff last VIEWPORT_SCALE? */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 1);			/* 00000001 VIEWPORT_TRANSFORM_EN */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1924 */
	FUNC1(ctx, 1, 0x10);			/* 000000ff VIEW_VOLUME_CLIP_CTRL */
	FUNC1(ctx, 1, 0);			/* 00000001 */
	FUNC1(ctx, 0x30, 0);			/* ffffffff VIEWPORT_TRANSLATE */
	FUNC1(ctx, 3, 0);			/* f, 0, 0 */
	FUNC1(ctx, 3, 0);			/* ffffffff */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 2, 0x88);			/* 000001ff tesla UNK19D8 */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1924 */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 4);			/* 0000000f CULL_MODE */
	FUNC1(ctx, 2, 0);			/* 07ffffff SCREEN_SCISSOR */
	FUNC1(ctx, 2, 0);			/* 00007fff WINDOW_OFFSET_XY */
	FUNC1(ctx, 1, 0);			/* 00000003 WINDOW_ORIGIN */
	FUNC1(ctx, 0x10, 0);			/* 00000001 SCISSOR_ENABLE */
	FUNC1(ctx, 1, 0);			/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC1(ctx, 1, 0x26);			/* 000000ff SEMANTIC_LAYER */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 0);			/* 0000000f */
	FUNC1(ctx, 1, 0x3f800000);		/* ffffffff LINE_WIDTH */
	FUNC1(ctx, 1, 0);			/* 00000001 LINE_STIPPLE_ENABLE */
	FUNC1(ctx, 1, 0);			/* 00000001 LINE_SMOOTH_ENABLE */
	FUNC1(ctx, 1, 0);			/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 0);		/* 00000001 */
	FUNC1(ctx, 1, 0x1a);			/* 0000001f POLYGON_MODE */
	FUNC1(ctx, 1, 0x10);			/* 000000ff VIEW_VOLUME_CLIP_CTRL */
	if (device->chipset != 0x50) {
		FUNC1(ctx, 1, 0);		/* ffffffff */
		FUNC1(ctx, 1, 0);		/* 00000001 */
		FUNC1(ctx, 1, 0);		/* 000003ff */
	}
	FUNC1(ctx, 0x20, 0);			/* 10xbits ffffffff, 3fffff. SCISSOR_* */
	FUNC1(ctx, 1, 0);			/* f */
	FUNC1(ctx, 1, 0);			/* 0? */
	FUNC1(ctx, 1, 0);			/* ffffffff */
	FUNC1(ctx, 1, 0);			/* 003fffff */
	FUNC1(ctx, 1, 0);			/* ffffffff tesla UNK1A30 */
	FUNC1(ctx, 1, 0x52);			/* 000001ff SEMANTIC_PTSZ */
	FUNC1(ctx, 1, 0);			/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC1(ctx, 1, 0x26);			/* 000000ff SEMANTIC_LAYER */
	FUNC1(ctx, 1, 0);			/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 4);			/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 4);			/* 000000ff GP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 0);			/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0x1a);			/* 0000001f POLYGON_MODE */
	FUNC1(ctx, 1, 0);			/* 00000001 LINE_SMOOTH_ENABLE */
	FUNC1(ctx, 1, 0);			/* 00000001 LINE_STIPPLE_ENABLE */
	FUNC1(ctx, 1, 0x00ffff00);		/* 00ffffff LINE_STIPPLE_PATTERN */
	FUNC1(ctx, 1, 0);			/* 0000000f */
}