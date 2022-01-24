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
	int i;
	/* middle of strand 0 on pre-NVA0 [after m2mf], end of strand 2 on NVAx */
	/* SEEK */
	FUNC1(ctx, 0x33, 0);
	/* SEEK */
	FUNC1(ctx, 2, 0);
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 4);		/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 4);		/* 000000ff GP_RESULT_MAP_SIZE */
	/* SEEK */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 4, 0);	/* RO */
		FUNC1(ctx, 0xe10, 0); /* 190 * 9: 8*ffffffff, 7ff */
		FUNC1(ctx, 1, 0);	/* 1ff */
		FUNC1(ctx, 8, 0);	/* 0? */
		FUNC1(ctx, 9, 0);	/* ffffffff, 7ff */

		FUNC1(ctx, 4, 0);	/* RO */
		FUNC1(ctx, 0xe10, 0); /* 190 * 9: 8*ffffffff, 7ff */
		FUNC1(ctx, 1, 0);	/* 1ff */
		FUNC1(ctx, 8, 0);	/* 0? */
		FUNC1(ctx, 9, 0);	/* ffffffff, 7ff */
	} else {
		FUNC1(ctx, 0xc, 0);	/* RO */
		/* SEEK */
		FUNC1(ctx, 0xe10, 0); /* 190 * 9: 8*ffffffff, 7ff */
		FUNC1(ctx, 1, 0);	/* 1ff */
		FUNC1(ctx, 8, 0);	/* 0? */

		/* SEEK */
		FUNC1(ctx, 0xc, 0);	/* RO */
		/* SEEK */
		FUNC1(ctx, 0xe10, 0); /* 190 * 9: 8*ffffffff, 7ff */
		FUNC1(ctx, 1, 0);	/* 1ff */
		FUNC1(ctx, 8, 0);	/* 0? */
	}
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 4);		/* 000000ff GP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 4);		/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 3);	/* 00000003 tesla UNK1100 */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	FUNC1(ctx, 1, 0);		/* 0000000f VP_GP_BUILTIN_ATTR_EN */
	FUNC1(ctx, 1, 0x80c14);	/* 01ffffff SEMANTIC_COLOR */
	FUNC1(ctx, 1, 1);		/* 00000001 */
	/* SEEK */
	if (device->chipset >= 0xa0)
		FUNC1(ctx, 2, 4);	/* 000000ff */
	FUNC1(ctx, 1, 0x80c14);	/* 01ffffff SEMANTIC_COLOR */
	FUNC1(ctx, 1, 0);		/* 00000001 VERTEX_TWO_SIDE_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 POINT_SPRITE_ENABLE */
	FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	FUNC1(ctx, 1, 0x27);		/* 000000ff SEMANTIC_PRIM_ID */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0);		/* 0000000f */
	FUNC1(ctx, 1, 1);		/* 00000001 */
	for (i = 0; i < 10; i++) {
		/* SEEK */
		FUNC1(ctx, 0x40, 0);		/* ffffffff */
		FUNC1(ctx, 0x10, 0);		/* 3, 0, 0.... */
		FUNC1(ctx, 0x10, 0);		/* ffffffff */
	}
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 00000001 POINT_SPRITE_CTRL */
	FUNC1(ctx, 1, 1);		/* 00000001 */
	FUNC1(ctx, 1, 0);		/* ffffffff */
	FUNC1(ctx, 4, 0);		/* ffffffff NOPERSPECTIVE_BITMAP */
	FUNC1(ctx, 0x10, 0);		/* 00ffffff POINT_COORD_REPLACE_MAP */
	FUNC1(ctx, 1, 0);		/* 00000003 WINDOW_ORIGIN */
	FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 0);	/* 000003ff */
}