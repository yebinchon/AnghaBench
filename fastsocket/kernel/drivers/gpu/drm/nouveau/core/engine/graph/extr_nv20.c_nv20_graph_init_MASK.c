#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nv20_graph_priv {TYPE_1__* ctxtab; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_5__ {int regions; } ;
struct nouveau_fb {TYPE_2__ tile; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct TYPE_6__ {int chipset; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int addr; } ;

/* Variables and functions */
 int NV03_PGRAPH_ABS_UCLIP_XMAX ; 
 int NV03_PGRAPH_ABS_UCLIP_XMIN ; 
 int NV03_PGRAPH_ABS_UCLIP_YMAX ; 
 int NV03_PGRAPH_ABS_UCLIP_YMIN ; 
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_INTR_EN ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_RDI_DATA ; 
 int NV10_PGRAPH_RDI_INDEX ; 
 int NV10_PGRAPH_STATE ; 
 int NV10_PGRAPH_SURFACE ; 
 int NV20_PGRAPH_CHANNEL_CTX_TABLE ; 
 struct nouveau_fb* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct nv20_graph_priv*) ; 
 struct nouveau_engine* FUNC3 (struct nouveau_object*) ; 
 int FUNC4 (struct nv20_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv20_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv20_graph_priv*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_engine*,int) ; 

int
FUNC9(struct nouveau_object *object)
{
	struct nouveau_engine *engine = FUNC3(object);
	struct nv20_graph_priv *priv = (void *)engine;
	struct nouveau_fb *pfb = FUNC0(object);
	u32 tmp, vramsz;
	int ret, i;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	FUNC6(priv, NV20_PGRAPH_CHANNEL_CTX_TABLE, priv->ctxtab->addr >> 4);

	if (FUNC2(priv)->chipset == 0x20) {
		FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x003d0000);
		for (i = 0; i < 15; i++)
			FUNC6(priv, NV10_PGRAPH_RDI_DATA, 0x00000000);
		FUNC5(priv, 0x400700, 0xffffffff, 0x00000000);
	} else {
		FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x02c80000);
		for (i = 0; i < 32; i++)
			FUNC6(priv, NV10_PGRAPH_RDI_DATA, 0x00000000);
		FUNC5(priv, 0x400700, 0xffffffff, 0x00000000);
	}

	FUNC6(priv, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC6(priv, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC6(priv, NV04_PGRAPH_DEBUG_1, 0x00118700);
	FUNC6(priv, NV04_PGRAPH_DEBUG_3, 0xF3CE0475); /* 0x4 = auto ctx switch */
	FUNC6(priv, NV10_PGRAPH_DEBUG_4, 0x00000000);
	FUNC6(priv, 0x40009C           , 0x00000040);

	if (FUNC2(priv)->chipset >= 0x25) {
		FUNC6(priv, 0x400890, 0x00a8cfff);
		FUNC6(priv, 0x400610, 0x304B1FB6);
		FUNC6(priv, 0x400B80, 0x1cbd3883);
		FUNC6(priv, 0x400B84, 0x44000000);
		FUNC6(priv, 0x400098, 0x40000080);
		FUNC6(priv, 0x400B88, 0x000000ff);

	} else {
		FUNC6(priv, 0x400880, 0x0008c7df);
		FUNC6(priv, 0x400094, 0x00000005);
		FUNC6(priv, 0x400B80, 0x45eae20e);
		FUNC6(priv, 0x400B84, 0x24000000);
		FUNC6(priv, 0x400098, 0x00000040);
		FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x00E00038);
		FUNC6(priv, NV10_PGRAPH_RDI_DATA , 0x00000030);
		FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x00E10038);
		FUNC6(priv, NV10_PGRAPH_RDI_DATA , 0x00000030);
	}

	/* Turn all the tiling regions off. */
	for (i = 0; i < pfb->tile.regions; i++)
		engine->tile_prog(engine, i);

	FUNC6(priv, 0x4009a0, FUNC4(priv, 0x100324));
	FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA000C);
	FUNC6(priv, NV10_PGRAPH_RDI_DATA, FUNC4(priv, 0x100324));

	FUNC6(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000100);
	FUNC6(priv, NV10_PGRAPH_STATE      , 0xFFFFFFFF);

	tmp = FUNC4(priv, NV10_PGRAPH_SURFACE) & 0x0007ff00;
	FUNC6(priv, NV10_PGRAPH_SURFACE, tmp);
	tmp = FUNC4(priv, NV10_PGRAPH_SURFACE) | 0x00020100;
	FUNC6(priv, NV10_PGRAPH_SURFACE, tmp);

	/* begin RAM config */
	vramsz = FUNC7(FUNC2(priv)->pdev, 0) - 1;
	FUNC6(priv, 0x4009A4, FUNC4(priv, 0x100200));
	FUNC6(priv, 0x4009A8, FUNC4(priv, 0x100204));
	FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0000);
	FUNC6(priv, NV10_PGRAPH_RDI_DATA , FUNC4(priv, 0x100200));
	FUNC6(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0004);
	FUNC6(priv, NV10_PGRAPH_RDI_DATA , FUNC4(priv, 0x100204));
	FUNC6(priv, 0x400820, 0);
	FUNC6(priv, 0x400824, 0);
	FUNC6(priv, 0x400864, vramsz - 1);
	FUNC6(priv, 0x400868, vramsz - 1);

	/* interesting.. the below overwrites some of the tile setup above.. */
	FUNC6(priv, 0x400B20, 0x00000000);
	FUNC6(priv, 0x400B04, 0xFFFFFFFF);

	FUNC6(priv, NV03_PGRAPH_ABS_UCLIP_XMIN, 0);
	FUNC6(priv, NV03_PGRAPH_ABS_UCLIP_YMIN, 0);
	FUNC6(priv, NV03_PGRAPH_ABS_UCLIP_XMAX, 0x7fff);
	FUNC6(priv, NV03_PGRAPH_ABS_UCLIP_YMAX, 0x7fff);
	return 0;
}