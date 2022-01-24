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
	/* Strand 0, right after dispatch */
	struct nouveau_device *device = ctx->device;
	int smallm2mf = 0;
	if (device->chipset < 0x92 || device->chipset == 0x98)
		smallm2mf = 1;
	/* SEEK */
	FUNC0 (ctx, 1, 0);		/* DMA_NOTIFY instance >> 4 */
	FUNC0 (ctx, 1, 0);		/* DMA_BUFFER_IN instance >> 4 */
	FUNC0 (ctx, 1, 0);		/* DMA_BUFFER_OUT instance >> 4 */
	FUNC0 (ctx, 1, 0);		/* OFFSET_IN */
	FUNC0 (ctx, 1, 0);		/* OFFSET_OUT */
	FUNC0 (ctx, 1, 0);		/* PITCH_IN */
	FUNC0 (ctx, 1, 0);		/* PITCH_OUT */
	FUNC0 (ctx, 1, 0);		/* LINE_LENGTH */
	FUNC0 (ctx, 1, 0);		/* LINE_COUNT */
	FUNC0 (ctx, 1, 0x21);		/* FORMAT: bits 0-4 INPUT_INC, bits 5-9 OUTPUT_INC */
	FUNC0 (ctx, 1, 1);		/* LINEAR_IN */
	FUNC0 (ctx, 1, 0x2);		/* TILING_MODE_IN: bits 0-2 y tiling, bits 3-5 z tiling */
	FUNC0 (ctx, 1, 0x100);	/* TILING_PITCH_IN */
	FUNC0 (ctx, 1, 0x100);	/* TILING_HEIGHT_IN */
	FUNC0 (ctx, 1, 1);		/* TILING_DEPTH_IN */
	FUNC0 (ctx, 1, 0);		/* TILING_POSITION_IN_Z */
	FUNC0 (ctx, 1, 0);		/* TILING_POSITION_IN */
	FUNC0 (ctx, 1, 1);		/* LINEAR_OUT */
	FUNC0 (ctx, 1, 0x2);		/* TILING_MODE_OUT: bits 0-2 y tiling, bits 3-5 z tiling */
	FUNC0 (ctx, 1, 0x100);	/* TILING_PITCH_OUT */
	FUNC0 (ctx, 1, 0x100);	/* TILING_HEIGHT_OUT */
	FUNC0 (ctx, 1, 1);		/* TILING_DEPTH_OUT */
	FUNC0 (ctx, 1, 0);		/* TILING_POSITION_OUT_Z */
	FUNC0 (ctx, 1, 0);		/* TILING_POSITION_OUT */
	FUNC0 (ctx, 1, 0);		/* OFFSET_IN_HIGH */
	FUNC0 (ctx, 1, 0);		/* OFFSET_OUT_HIGH */
	/* SEEK */
	if (smallm2mf)
		FUNC0(ctx, 0x40, 0);	/* 20 * ffffffff, 3ffff */
	else
		FUNC0(ctx, 0x100, 0);	/* 80 * ffffffff, 3ffff */
	FUNC0(ctx, 4, 0);		/* 1f/7f, 0, 1f/7f, 0 [1f for smallm2mf, 7f otherwise] */
	/* SEEK */
	if (smallm2mf)
		FUNC0(ctx, 0x400, 0);	/* ffffffff */
	else
		FUNC0(ctx, 0x800, 0);	/* ffffffff */
	FUNC0(ctx, 4, 0);		/* ff/1ff, 0, 0, 0 [ff for smallm2mf, 1ff otherwise] */
	/* SEEK */
	FUNC0(ctx, 0x40, 0);		/* 20 * bits ffffffff, 3ffff */
	FUNC0(ctx, 0x6, 0);		/* 1f, 0, 1f, 0, 1f, 0 */
}