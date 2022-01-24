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
	int acnt = 0x10, rep, i;
	/* beginning of strand 1 on pre-NVA0, strand 3 on NVAx */
	if (FUNC0(device->chipset))
		acnt = 0x20;
	/* SEEK */
	if (device->chipset >= 0xa0) {
		FUNC1(ctx, 1, 0);	/* ffffffff tesla UNK13A4 */
		FUNC1(ctx, 1, 1);	/* 00000fff tesla UNK1318 */
	}
	FUNC1(ctx, 1, 0);		/* ffffffff VERTEX_BUFFER_FIRST */
	FUNC1(ctx, 1, 0);		/* 00000001 PRIMITIVE_RESTART_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 UNK0DE8 */
	FUNC1(ctx, 1, 0);		/* ffffffff PRIMITIVE_RESTART_INDEX */
	FUNC1(ctx, 1, 0xf);		/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, (acnt/8)-1, 0);	/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, acnt/8, 0);	/* ffffffff VTX_ATR_MASK_UNK0DD0 */
	FUNC1(ctx, 1, 0);		/* 0000000f VP_GP_BUILTIN_ATTR_EN */
	FUNC1(ctx, 1, 0x20);		/* 0000ffff tesla UNK129C */
	FUNC1(ctx, 1, 0);		/* 000000ff turing UNK370??? */
	FUNC1(ctx, 1, 0);		/* 0000ffff turing USER_PARAM_COUNT */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A30 */
	/* SEEK */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 0xb, 0);	/* RO */
	else if (device->chipset >= 0xa0)
		FUNC1(ctx, 0x9, 0);	/* RO */
	else
		FUNC1(ctx, 0x8, 0);	/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 00000001 EDGE_FLAG */
	FUNC1(ctx, 1, 0);		/* 00000001 PROVOKING_VERTEX_LAST */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	FUNC1(ctx, 1, 0x1a);		/* 0000001f POLYGON_MODE */
	/* SEEK */
	FUNC1(ctx, 0xc, 0);		/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 7f/ff */
	FUNC1(ctx, 1, 4);		/* 7f/ff VP_REG_ALLOC_RESULT */
	FUNC1(ctx, 1, 4);		/* 7f/ff VP_RESULT_MAP_SIZE */
	FUNC1(ctx, 1, 0);		/* 0000000f VP_GP_BUILTIN_ATTR_EN */
	FUNC1(ctx, 1, 4);		/* 000001ff UNK1A28 */
	FUNC1(ctx, 1, 8);		/* 000001ff UNK0DF0 */
	FUNC1(ctx, 1, 0);		/* 00000001 GP_ENABLE */
	if (device->chipset == 0x50)
		FUNC1(ctx, 1, 0x3ff);	/* 3ff tesla UNK0D68 */
	else
		FUNC1(ctx, 1, 0x7ff);	/* 7ff tesla UNK0D68 */
	if (device->chipset == 0xa8)
		FUNC1(ctx, 1, 0x1e00);	/* 7fff */
	/* SEEK */
	FUNC1(ctx, 0xc, 0);		/* RO or close */
	/* SEEK */
	FUNC1(ctx, 1, 0xf);		/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, (acnt/8)-1, 0);	/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, 1, 0);		/* 0000000f VP_GP_BUILTIN_ATTR_EN */
	if (device->chipset > 0x50 && device->chipset < 0xa0)
		FUNC1(ctx, 2, 0);	/* ffffffff */
	else
		FUNC1(ctx, 1, 0);	/* ffffffff */
	FUNC1(ctx, 1, 0);		/* 00000003 tesla UNK0FD8 */
	/* SEEK */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 0x10, 0);	/* 0? */
		FUNC1(ctx, 2, 0);	/* weird... */
		FUNC1(ctx, 2, 0);	/* RO */
	} else {
		FUNC1(ctx, 8, 0);	/* 0? */
		FUNC1(ctx, 1, 0);	/* weird... */
		FUNC1(ctx, 2, 0);	/* RO */
	}
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* ffffffff VB_ELEMENT_BASE */
	FUNC1(ctx, 1, 0);		/* ffffffff UNK1438 */
	FUNC1(ctx, acnt, 0);		/* 1 tesla UNK1000 */
	if (device->chipset >= 0xa0)
		FUNC1(ctx, 1, 0);	/* ffffffff tesla UNK1118? */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* ffffffff VERTEX_ARRAY_UNK90C */
	FUNC1(ctx, 1, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* ffffffff VERTEX_ARRAY_UNK90C */
	FUNC1(ctx, 1, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* RO */
	FUNC1(ctx, 2, 0);		/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK111C? */
	FUNC1(ctx, 1, 0);		/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 000000ff UNK15F4_ADDRESS_HIGH */
	FUNC1(ctx, 1, 0);		/* ffffffff UNK15F4_ADDRESS_LOW */
	FUNC1(ctx, 1, 0);		/* 000000ff UNK0F84_ADDRESS_HIGH */
	FUNC1(ctx, 1, 0);		/* ffffffff UNK0F84_ADDRESS_LOW */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* 00003fff VERTEX_ARRAY_ATTRIB_OFFSET */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* 00000fff VERTEX_ARRAY_STRIDE */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* ffffffff VERTEX_ARRAY_LOW */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* 000000ff VERTEX_ARRAY_HIGH */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* ffffffff VERTEX_LIMIT_LOW */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	FUNC1(ctx, acnt, 0);		/* 000000ff VERTEX_LIMIT_HIGH */
	FUNC1(ctx, 3, 0);		/* f/1f */
	/* SEEK */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, acnt, 0);		/* f */
		FUNC1(ctx, 3, 0);		/* f/1f */
	}
	/* SEEK */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 2, 0);	/* RO */
	else
		FUNC1(ctx, 5, 0);	/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* ffff DMA_VTXBUF */
	/* SEEK */
	if (device->chipset < 0xa0) {
		FUNC1(ctx, 0x41, 0);	/* RO */
		/* SEEK */
		FUNC1(ctx, 0x11, 0);	/* RO */
	} else if (!FUNC0(device->chipset))
		FUNC1(ctx, 0x50, 0);	/* RO */
	else
		FUNC1(ctx, 0x58, 0);	/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0xf);		/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, (acnt/8)-1, 0);	/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, 1, 1);		/* 1 UNK0DEC */
	/* SEEK */
	FUNC1(ctx, acnt*4, 0);	/* ffffffff VTX_ATTR */
	FUNC1(ctx, 4, 0);		/* f/1f, 0, 0, 0 */
	/* SEEK */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 0x1d, 0);	/* RO */
	else
		FUNC1(ctx, 0x16, 0);	/* RO */
	/* SEEK */
	FUNC1(ctx, 1, 0xf);		/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, (acnt/8)-1, 0);	/* ffffffff VP_ATTR_EN */
	/* SEEK */
	if (device->chipset < 0xa0)
		FUNC1(ctx, 8, 0);	/* RO */
	else if (FUNC0(device->chipset))
		FUNC1(ctx, 0xc, 0);	/* RO */
	else
		FUNC1(ctx, 7, 0);	/* RO */
	/* SEEK */
	FUNC1(ctx, 0xa, 0);		/* RO */
	if (device->chipset == 0xa0)
		rep = 0xc;
	else
		rep = 4;
	for (i = 0; i < rep; i++) {
		/* SEEK */
		if (FUNC0(device->chipset))
			FUNC1(ctx, 0x20, 0);	/* ffffffff */
		FUNC1(ctx, 0x200, 0);	/* ffffffff */
		FUNC1(ctx, 4, 0);	/* 7f/ff, 0, 0, 0 */
		FUNC1(ctx, 4, 0);	/* ffffffff */
	}
	/* SEEK */
	FUNC1(ctx, 1, 0);		/* 113/111 */
	FUNC1(ctx, 1, 0xf);		/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, (acnt/8)-1, 0);	/* ffffffff VP_ATTR_EN */
	FUNC1(ctx, acnt/8, 0);	/* ffffffff VTX_ATTR_MASK_UNK0DD0 */
	FUNC1(ctx, 1, 0);		/* 0000000f VP_GP_BUILTIN_ATTR_EN */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A30 */
	/* SEEK */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 7, 0);	/* weird... */
	else
		FUNC1(ctx, 5, 0);	/* weird... */
}