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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	FUNC1(ctx, 2, 0);		/* 1 LINKED_TSC. yes, 2. */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 0);	/* 3 */
	FUNC1(ctx, 1, 1);		/* 1ffff BLIT_DU_DX_INT */
	FUNC1(ctx, 1, 0);		/* fffff BLIT_DU_DX_FRACT */
	FUNC1(ctx, 1, 1);		/* 1ffff BLIT_DV_DY_INT */
	FUNC1(ctx, 1, 0);		/* fffff BLIT_DV_DY_FRACT */
	if (device->chipset == 0x50)
		FUNC1(ctx, 1, 0);	/* 3 BLIT_CONTROL */
	else
		FUNC1(ctx, 2, 0);	/* 3ff, 1 */
	FUNC1(ctx, 1, 0x2a712488);	/* ffffffff SRC_TIC_0 */
	FUNC1(ctx, 1, 0);		/* ffffffff SRC_TIC_1 */
	FUNC1(ctx, 1, 0x4085c000);	/* ffffffff SRC_TIC_2 */
	FUNC1(ctx, 1, 0x40);		/* ffffffff SRC_TIC_3 */
	FUNC1(ctx, 1, 0x100);		/* ffffffff SRC_TIC_4 */
	FUNC1(ctx, 1, 0x10100);	/* ffffffff SRC_TIC_5 */
	FUNC1(ctx, 1, 0x02800000);	/* ffffffff SRC_TIC_6 */
	FUNC1(ctx, 1, 0);		/* ffffffff SRC_TIC_7 */
	if (device->chipset == 0x50) {
		FUNC1(ctx, 1, 0);	/* 00000001 turing UNK358 */
		FUNC1(ctx, 1, 0);	/* ffffffff tesla UNK1A34? */
		FUNC1(ctx, 1, 0);	/* 00000003 turing UNK37C tesla UNK1690 */
		FUNC1(ctx, 1, 0);	/* 00000003 BLIT_CONTROL */
		FUNC1(ctx, 1, 0);	/* 00000001 turing UNK32C tesla UNK0F94 */
	} else if (!FUNC0(device->chipset)) {
		FUNC1(ctx, 1, 0);	/* ffffffff tesla UNK1A34? */
		FUNC1(ctx, 1, 0);	/* 00000003 */
		FUNC1(ctx, 1, 0);	/* 000003ff */
		FUNC1(ctx, 1, 0);	/* 00000003 */
		FUNC1(ctx, 1, 0);	/* 000003ff */
		FUNC1(ctx, 1, 0);	/* 00000003 tesla UNK1664 / turing UNK03E8 */
		FUNC1(ctx, 1, 0);	/* 00000003 */
		FUNC1(ctx, 1, 0);	/* 000003ff */
	} else {
		FUNC1(ctx, 0x6, 0);
	}
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A34 */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_TEXTURE */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_SRC */
}