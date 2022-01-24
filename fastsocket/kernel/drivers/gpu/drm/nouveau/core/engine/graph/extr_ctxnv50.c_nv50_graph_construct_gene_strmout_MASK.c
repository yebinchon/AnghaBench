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
 int /*<<< orphan*/  FUNC0 (struct nouveau_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	FUNC0(ctx, 1, 0x102);		/* 0000ffff STRMOUT_BUFFER_CTRL */
	FUNC0(ctx, 1, 0);		/* ffffffff STRMOUT_PRIMITIVE_COUNT */
	FUNC0(ctx, 4, 4);		/* 000000ff STRMOUT_NUM_ATTRIBS */
	if (device->chipset >= 0xa0) {
		FUNC0(ctx, 4, 0);	/* ffffffff UNK1A8C */
		FUNC0(ctx, 4, 0);	/* ffffffff UNK1780 */
	}
	FUNC0(ctx, 1, 4);		/* 000000ff GP_RESULT_MAP_SIZE */
	FUNC0(ctx, 1, 4);		/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC0(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	if (device->chipset == 0x50)
		FUNC0(ctx, 1, 0x3ff);	/* 000003ff tesla UNK0D68 */
	else
		FUNC0(ctx, 1, 0x7ff);	/* 000007ff tesla UNK0D68 */
	FUNC0(ctx, 1, 0);		/* ffffffff tesla UNK1A30 */
	/* SEEK */
	FUNC0(ctx, 1, 0x102);		/* 0000ffff STRMOUT_BUFFER_CTRL */
	FUNC0(ctx, 1, 0);		/* ffffffff STRMOUT_PRIMITIVE_COUNT */
	FUNC0(ctx, 4, 0);		/* 000000ff STRMOUT_ADDRESS_HIGH */
	FUNC0(ctx, 4, 0);		/* ffffffff STRMOUT_ADDRESS_LOW */
	FUNC0(ctx, 4, 4);		/* 000000ff STRMOUT_NUM_ATTRIBS */
	if (device->chipset >= 0xa0) {
		FUNC0(ctx, 4, 0);	/* ffffffff UNK1A8C */
		FUNC0(ctx, 4, 0);	/* ffffffff UNK1780 */
	}
	FUNC0(ctx, 1, 0);		/* 0000ffff DMA_STRMOUT */
	FUNC0(ctx, 1, 0);		/* 0000ffff DMA_QUERY */
	FUNC0(ctx, 1, 0);		/* 000000ff QUERY_ADDRESS_HIGH */
	FUNC0(ctx, 2, 0);		/* ffffffff QUERY_ADDRESS_LOW QUERY_COUNTER */
	FUNC0(ctx, 2, 0);		/* ffffffff */
	FUNC0(ctx, 1, 0);		/* ffffffff tesla UNK1A30 */
	/* SEEK */
	FUNC0(ctx, 0x20, 0);		/* ffffffff STRMOUT_MAP */
	FUNC0(ctx, 1, 0);		/* 0000000f */
	FUNC0(ctx, 1, 0);		/* 00000000? */
	FUNC0(ctx, 2, 0);		/* ffffffff */
}